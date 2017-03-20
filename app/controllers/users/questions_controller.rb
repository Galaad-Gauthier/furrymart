class Users::QuestionsController < ApplicationController

  before_action :authenticate_user!, only: [:create]

  before_action :find_user, only: [:create]
  before_action :find_question, only: [:update]
  before_action :build_question, only: [:create]

  def create
    @question.assign_attributes(question_params)
    authorize @question

    if @question.save
      flash[:notice] = I18n.t("users.questions.create.success")

      if @question.recipient.allow_question_created_notification
        NotificationMailer.question_created(@question).deliver_later
      end
    end
    redirect_back fallback_location: profile_url(user_id: @question.recipient.slug)
  end

  def update
    @question.assign_attributes(question_params)
    authorize @question

    if @question.save
      flash[:notice] = I18n.t("users.questions.update.success")

      if @question.sender.allow_question_answered_notification
        NotificationMailer.question_answered(@question).deliver_later
      end
    end
    redirect_back fallback_location: profile_url(user_id: @question.recipient.slug)
  end

  protected

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def build_question
    @question = Question.new(recipient: @user)
  end

  def question_params
    strong_params(Question.new)
  end
end
