class MainController < ApplicationController
  before_action :require_login, only: [:dashboard]
  def index
  end

  def dashboard
  end
end
