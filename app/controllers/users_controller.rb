# frozen_string_literal: true

class UsersController < Clearance::UsersController
  before_action :current_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:name, :phone, :email, :password)
    end

    def current_user
      @user = User.find(params[:id])
    end
end
