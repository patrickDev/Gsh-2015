require 'test_helper'

class PimosControllerTest < ActionController::TestCase
  setup do
    @pimo = pimos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pimos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pimo" do
    assert_difference('Pimo.count') do
      post :create, pimo: { area: @pimo.area }
    end

    assert_redirected_to pimo_path(assigns(:pimo))
  end

  test "should show pimo" do
    get :show, id: @pimo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pimo
    assert_response :success
  end

  test "should update pimo" do
    patch :update, id: @pimo, pimo: { area: @pimo.area }
    assert_redirected_to pimo_path(assigns(:pimo))
  end

  test "should destroy pimo" do
    assert_difference('Pimo.count', -1) do
      delete :destroy, id: @pimo
    end

    assert_redirected_to pimos_path
  end
end
