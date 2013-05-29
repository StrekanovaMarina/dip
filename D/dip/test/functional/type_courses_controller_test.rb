require 'test_helper'

class TypeCoursesControllerTest < ActionController::TestCase
  setup do
    @type_course = type_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_course" do
    assert_difference('TypeCourse.count') do
      post :create, type_course: { title: @type_course.title }
    end

    assert_redirected_to type_course_path(assigns(:type_course))
  end

  test "should show type_course" do
    get :show, id: @type_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_course
    assert_response :success
  end

  test "should update type_course" do
    put :update, id: @type_course, type_course: { title: @type_course.title }
    assert_redirected_to type_course_path(assigns(:type_course))
  end

  test "should destroy type_course" do
    assert_difference('TypeCourse.count', -1) do
      delete :destroy, id: @type_course
    end

    assert_redirected_to type_courses_path
  end
end
