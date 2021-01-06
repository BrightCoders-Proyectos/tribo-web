class MarketPlacesController < ApplicationController
  before_action :set_market_place, only: [:show, :edit, :update, :destroy]

  # GET /market_places
  # GET /market_places.json
  def index
    @market_places = MarketPlace.all
  end

  # GET /market_places/1
  # GET /market_places/1.json
  def show
  end

  # GET /market_places/new
  def new
    @market_place = MarketPlace.new
  end

  # GET /market_places/1/edit
  def edit
  end

  # POST /market_places
  # POST /market_places.json
  def create
    @market_place = MarketPlace.new(market_place_params)

    respond_to do |format|
      if @market_place.save
        format.html { redirect_to @market_place, notice: 'Market place was successfully created.' }
        format.json { render :show, status: :created, location: @market_place }
      else
        format.html { render :new }
        format.json { render json: @market_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_places/1
  # PATCH/PUT /market_places/1.json
  def update
    respond_to do |format|
      if @market_place.update(market_place_params)
        format.html { redirect_to @market_place, notice: 'Market place was successfully updated.' }
        format.json { render :show, status: :ok, location: @market_place }
      else
        format.html { render :edit }
        format.json { render json: @market_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_places/1
  # DELETE /market_places/1.json
  def destroy
    @market_place.destroy
    respond_to do |format|
      format.html { redirect_to market_places_url, notice: 'Market place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_place
      @market_place = MarketPlace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def market_place_params
      params.require(:market_place).permit(:business_name, :address, :district, :postcode, :business_line, :pickup_type, :open_hour, :close_hour, :service_days)
    end
end
