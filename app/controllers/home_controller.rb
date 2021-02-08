# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    if current_user.present?
      unless current_user.status
        sign_out
        redirect_to sign_in_path
      end
    end
  end
end
