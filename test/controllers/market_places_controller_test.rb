require 'test_helper'

class MarketPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @market_place = market_places(:one)
  end

  test "should get index" do
    get market_places_url
    assert_response :success
  end

  test "should get new" do
    get new_market_place_url
    assert_response :success
  end

  test "should create market_place" do
    assert_difference('MarketPlace.count') do
      post market_places_url, params: { market_place: { address: @market_place.address, business_line: @market_place.business_line, business_name: @market_place.business_name, close_hour: @market_place.close_hour, district: @market_place.district, open_hour: @market_place.open_hour, pickup_type: @market_place.pickup_type, postcode: @market_place.postcode, service_days: @market_place.service_days } }
    end

    assert_redirected_to market_place_url(MarketPlace.last)
  end

  test "should show market_place" do
    get market_place_url(@market_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_market_place_url(@market_place)
    assert_response :success
  end

  test "should update market_place" do
    patch market_place_url(@market_place), params: { market_place: { address: @market_place.address, business_line: @market_place.business_line, business_name: @market_place.business_name, close_hour: @market_place.close_hour, district: @market_place.district, open_hour: @market_place.open_hour, pickup_type: @market_place.pickup_type, postcode: @market_place.postcode, service_days: @market_place.service_days } }
    assert_redirected_to market_place_url(@market_place)
  end

  test "should destroy market_place" do
    assert_difference('MarketPlace.count', -1) do
      delete market_place_url(@market_place)
    end

    assert_redirected_to market_places_url
  end
end
