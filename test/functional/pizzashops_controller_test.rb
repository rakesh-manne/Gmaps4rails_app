require 'test_helper'

class PizzashopsControllerTest < ActionController::TestCase
  setup do
    @pizzashop = pizzashops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizzashops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizzashop" do
    assert_difference('Pizzashop.count') do
      post :create, pizzashop: { lattitude: @pizzashop.lattitude, longitude: @pizzashop.longitude, name: @pizzashop.name }
    end

    assert_redirected_to pizzashop_path(assigns(:pizzashop))
  end

  test "should show pizzashop" do
    get :show, id: @pizzashop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizzashop
    assert_response :success
  end

  test "should update pizzashop" do
    put :update, id: @pizzashop, pizzashop: { lattitude: @pizzashop.lattitude, longitude: @pizzashop.longitude, name: @pizzashop.name }
    assert_redirected_to pizzashop_path(assigns(:pizzashop))
  end

  test "should destroy pizzashop" do
    assert_difference('Pizzashop.count', -1) do
      delete :destroy, id: @pizzashop
    end

    assert_redirected_to pizzashops_path
  end
end
