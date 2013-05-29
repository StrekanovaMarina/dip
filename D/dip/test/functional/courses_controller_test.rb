require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { cost_g: @course.cost_g, cost_i: @course.cost_i, duration_g: @course.duration_g, duration_i: @course.duration_i, enrollment: @course.enrollment, title: @course.title, type_courses_id: @course.type_courses_id }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    put :update, id: @course, course: { cost_g: @course.cost_g, cost_i: @course.cost_i, duration_g: @course.duration_g, duration_i: @course.duration_i, enrollment: @course.enrollment, title: @course.title, type_courses_id: @course.type_courses_id }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
