require 'test_helper'

class TimechartsControllerTest < ActionController::TestCase
  setup do
    @timechart = timecharts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timecharts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timechart" do
    assert_difference('Timechart.count') do
      post :create, timechart: { description: @timechart.description, start_time: @timechart.start_time, stop_time: @timechart.stop_time }
    end

    assert_redirected_to timechart_path(assigns(:timechart))
  end

  test "should show timechart" do
    get :show, id: @timechart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timechart
    assert_response :success
  end

  test "should update timechart" do
    put :update, id: @timechart, timechart: { description: @timechart.description, start_time: @timechart.start_time, stop_time: @timechart.stop_time }
    assert_redirected_to timechart_path(assigns(:timechart))
  end

  test "should destroy timechart" do
    assert_difference('Timechart.count', -1) do
      delete :destroy, id: @timechart
    end

    assert_redirected_to timecharts_path
  end
end
