class Users::ProfilesController < ApplicationController
  before_action :set_user
  before_action :set_profile

  before_action :load_proposals, only: [:show]
  before_action :load_characters, only: [:show]
  before_action :load_assets, only: [:show]
  before_action :load_questions, only: [:show]
  before_action :load_wishes, only: [:show]
  before_action :build_question, only: [:show]
  before_action :build_report, only: [:show]

  def show
    authorize @profile

    if current_user.present?
      PublicActivity::Activity.mark_as_read!(PublicActivity::Activity.where(trackable: @profile.user.questions).to_a, for: current_user)
    end
  end

  def edit
    authorize @profile
  end

  def update
    @profile.assign_attributes(strong_params(@profile))
    authorize @profile

    if @profile.save

      respond_to do |format|
        format.html {
          flash[:notice] = I18n.t("users.profiles.update.success")
          redirect_to profile_url(user_id: @user.slug)
        }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { head 500 }
      end
    end
  end

  protected

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_profile
    @profile = @user.profile
  end

  def load_proposals
    proposals = policy_scope(@user.proposals)
      .includes(:artist, :banner, :delay, :style, :category)

    if @profile.proposals_order.present?
      sort = "CASE #{@profile.proposals_order.map.with_index { |id, index| "WHEN id=#{id} THEN #{index}" }.join("\n")} END"
      @proposals = proposals.order(sort)
    else
      @proposals = proposals.order(created_at: :desc)
    end
  end

  def load_characters
    characters = policy_scope(@user.characters)

    if @profile.characters_order.present?
      sort = "CASE #{@profile.characters_order.map.with_index { |id, index| "WHEN id=#{id} THEN #{index}" }.join("\n")} END"
      @characters = characters.order(sort)
    else
      @characters = characters.order(created_at: :desc)
    end
  end

  def load_assets
    @assets = AssetPolicy::Scope.new(current_user, @user.assets).resolve(@user)
      .order("RANDOM()")
      .limit(6)
  end

  def load_questions
    @questions = policy_scope(@user.questions)
      .includes({ :sender => [ :profile ], :recipient => [] })
      .order(created_at: :desc)
  end

  def load_wishes
    @wishes = policy_scope(@user.wishes)
      .joins(:proposal)
      .where("proposals.is_deleted = ?", false)
      .includes(proposal: [:artist, :banner, :delay, :style, :category])
      .order(created_at: :desc)
  end

  def build_question
    @question = Question.new(recipient: @user)
  end

  def build_report
    @report = Report.new(user: @user)
  end
end
