# frozen_string_literal: true

class UsersController < Clearance::UsersController
  before_action :current_user, only: [:show, :edit, :update]
  before_action :check_for_cancel, only: [:edit, :update]

  def check_for_cancel
    if params[:commit] == "Cancel"
      redirect_to user_url
    end
  end

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url }
      else
        format.html { render :edit }
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :phone, :email, :password)
    end

    def current_user
      @user = User.find(params[:id])
    end
end
