# frozen_string_literal: true

class Api::V1::MarketPlacesController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    @market_places = case params[:business_line]
                     when "Products", "Services", "Food"
                       @market_places = MarketPlace.where("business_line LIKE ?", "%#{params[:business_line]}%")
                     else
                       @market_places = MarketPlace.all
    end
    render json: @market_places
  end

  def show
    market_place = MarketPlace.find(params[:id])
    render json: market_place
    rescue ActiveRecord::RecordNotFound
      head :not_found
  end

  def create
    market_place = MarketPlace.create!(market_place_params)
    render json: market_place, status: :created
  end

  def update
    market_place = MarketPlace.find(params[:id])
    market_place.update(market_place_params)
    render json: market_place
  end

  def destroy
    market_place = MarketPlace.find(params[:id])
    market_place.delete
    head :no_content
  end

  private
    def market_place_params
      params.permit(:user_id, :business_name, :address, :district, :postcode, :business_line, :pickup_type, :latitud, :longitud, :open_hour, :close_hour, :service_days, :selling, :payment)
    end
end
