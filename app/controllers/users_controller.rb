# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update]
  before_action :current_user, only: [:show, :edit, :update]
  before_action :check_for_cancel, only: [:edit, :update]

  def check_for_cancel
    if params[:commit] == "Cancelar"
      redirect_to my_account_path
    end
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)

    redirect_to sign_in_path(user)
  end

  def show
  end

  def index
    @user_market = MarketPlace.where(user_id: current_user.id)
  end

  def edit
  end

  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to my_account_path }
      else
        format.html { render :edit }
      end
    end
  end

  def deactivate
    current_user.update_attribute(:status, false)
    sign_out
    redirect_to sign_in_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :phone, :email, :password, :status)
    end
end
