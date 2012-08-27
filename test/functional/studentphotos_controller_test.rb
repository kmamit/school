require 'test_helper'

class StudentphotosControllerTest < ActionController::TestCase
  setup do
    @studentphoto = studentphotos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentphotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentphoto" do
    assert_difference('Studentphoto.count') do
      post :create, studentphoto: { student_id: @studentphoto.student_id }
    end

    assert_redirected_to studentphoto_path(assigns(:studentphoto))
  end

  test "should show studentphoto" do
    get :show, id: @studentphoto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studentphoto
    assert_response :success
  end

  test "should update studentphoto" do
    put :update, id: @studentphoto, studentphoto: { student_id: @studentphoto.student_id }
    assert_redirected_to studentphoto_path(assigns(:studentphoto))
  end

  test "should destroy studentphoto" do
    assert_difference('Studentphoto.count', -1) do
      delete :destroy, id: @studentphoto
    end

    assert_redirected_to studentphotos_path
  end
end
