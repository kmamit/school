require 'test_helper'

class DtpicsControllerTest < ActionController::TestCase
  setup do
    @dtpic = dtpics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dtpics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dtpic" do
    assert_difference('Dtpic.count') do
      post :create, dtpic: { join: @dtpic.join }
    end

    assert_redirected_to dtpic_path(assigns(:dtpic))
  end

  test "should show dtpic" do
    get :show, id: @dtpic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dtpic
    assert_response :success
  end

  test "should update dtpic" do
    put :update, id: @dtpic, dtpic: { join: @dtpic.join }
    assert_redirected_to dtpic_path(assigns(:dtpic))
  end

  test "should destroy dtpic" do
    assert_difference('Dtpic.count', -1) do
      delete :destroy, id: @dtpic
    end

    assert_redirected_to dtpics_path
  end
end
