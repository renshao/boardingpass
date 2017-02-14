require 'test_helper'

class BoardingPassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boarding_pass = boarding_passes(:one)
  end

  test "should get index" do
    get boarding_passes_url
    assert_response :success
  end

  test "should get new" do
    get new_boarding_pass_url
    assert_response :success
  end

  test "should create boarding_pass" do
    assert_difference('BoardingPass.count') do
      post boarding_passes_url, params: { boarding_pass: { arrival_airport_code: @boarding_pass.arrival_airport_code, departure_airport_code: @boarding_pass.departure_airport_code, departure_datetime: @boarding_pass.departure_datetime, flight_number: @boarding_pass.flight_number } }
    end

    assert_redirected_to boarding_pass_url(BoardingPass.last)
  end

  test "should show boarding_pass" do
    get boarding_pass_url(@boarding_pass)
    assert_response :success
  end

  test "should get edit" do
    get edit_boarding_pass_url(@boarding_pass)
    assert_response :success
  end

  test "should update boarding_pass" do
    patch boarding_pass_url(@boarding_pass), params: { boarding_pass: { arrival_airport_code: @boarding_pass.arrival_airport_code, departure_airport_code: @boarding_pass.departure_airport_code, departure_datetime: @boarding_pass.departure_datetime, flight_number: @boarding_pass.flight_number } }
    assert_redirected_to boarding_pass_url(@boarding_pass)
  end

  test "should destroy boarding_pass" do
    assert_difference('BoardingPass.count', -1) do
      delete boarding_pass_url(@boarding_pass)
    end

    assert_redirected_to boarding_passes_url
  end
end
