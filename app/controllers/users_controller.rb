# frozen_string_literal: true

class UsersController < Clearance::UsersController
  before_action :require_login, only: [:show, :edit, :update]
  before_action :current_user, only: [:show, :edit, :update]
  before_action :check_for_cancel, only: [:edit, :update]

  # Could be useful for a future issue
  # before_action :another_user

  # def another_user
  #   unless user_url.end_with?(current_user.id.to_s)
  #     redirect_to request.referer
  #   end
  # end

  def check_for_cancel
    if params[:commit] == "Cancel"
      redirect_to user_url
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to user_url }
      else
        format.html { render :edit }
      end
    end
  end

  def desactivate
    current_user = User.find(params[:id])
    current_user.update_attribute(:status, false)
    sign_out
    redirect_to sign_in_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :phone, :email, :password, :status)
    end
end
