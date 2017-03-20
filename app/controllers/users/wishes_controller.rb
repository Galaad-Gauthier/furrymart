class Users::WishesController < ApplicationController
  before_action :authenticate_user!

  before_action :find_user, only: [:create]
  before_action :build_wish, only: [:create]
  before_action :find_wish, only: [:destroy]

  def create
    @wish.assign_attributes(wish_params)
    authorize @wish

    @wish.save

    respond_to do |format|
      format.json { render json: @wish }
    end
  end

  def destroy
    authorize @wish
    @wish.destroy

    head :no_content
  end

  protected

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_wish
    @wish = Wish.find(params[:id])
  end

  def build_wish
    @wish = Wish.new(user: @user)
  end

  def wish_params
    strong_params(Wish.new)
  end
end
