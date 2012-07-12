require 'test_helper'

class VoyagesControllerTest < ActionController::TestCase
  setup do
    @voyage = voyages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voyages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voyage" do
    assert_difference('Voyage.count') do
      post :create, voyage: { airport_to: @voyage.airport_to, airpot_from: @voyage.airpot_from, arriving_at: @voyage.arriving_at, crash_at: @voyage.crash_at, price: @voyage.price, time: @voyage.time }
    end

    assert_redirected_to voyage_path(assigns(:voyage))
  end

  test "should show voyage" do
    get :show, id: @voyage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voyage
    assert_response :success
  end

  test "should update voyage" do
    put :update, id: @voyage, voyage: { airport_to: @voyage.airport_to, airpot_from: @voyage.airpot_from, arriving_at: @voyage.arriving_at, crash_at: @voyage.crash_at, price: @voyage.price, time: @voyage.time }
    assert_redirected_to voyage_path(assigns(:voyage))
  end

  test "should destroy voyage" do
    assert_difference('Voyage.count', -1) do
      delete :destroy, id: @voyage
    end

    assert_redirected_to voyages_path
  end
end
