require 'test_helper'

class BrunchesControllerTest < ActionController::TestCase
  setup do
    @brunch = brunches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brunch" do
    assert_difference('Brunch.count') do
      post :create, brunch: { address: @brunch.address, closing_time: @brunch.closing_time, name: @brunch.name, opening_time: @brunch.opening_time, vegetarian_options_available: @brunch.vegetarian_options_available }
    end

    assert_redirected_to brunch_path(assigns(:brunch))
  end

  test "should show brunch" do
    get :show, id: @brunch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brunch
    assert_response :success
  end

  test "should update brunch" do
    patch :update, id: @brunch, brunch: { address: @brunch.address, closing_time: @brunch.closing_time, name: @brunch.name, opening_time: @brunch.opening_time, vegetarian_options_available: @brunch.vegetarian_options_available }
    assert_redirected_to brunch_path(assigns(:brunch))
  end

  test "should destroy brunch" do
    assert_difference('Brunch.count', -1) do
      delete :destroy, id: @brunch
    end

    assert_redirected_to brunches_path
  end
end
