# frozen_string_literal: true

class UsersController < ApplicationController
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
      if @user.update(user_params)
        format.html { redirect_to user_url }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to market_place_url
  end

  private
    def user_params
      params.require(:user).permit(:name, :phone, :email, :password)
    end

    def current_user
      @user = User.find(params[:id])
    end
end
