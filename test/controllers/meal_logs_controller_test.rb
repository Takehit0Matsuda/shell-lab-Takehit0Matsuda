require "test_helper"

class MealLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal_log = meal_logs(:one)
  end

  test "should get index" do
    get meal_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_log_url
    assert_response :success
  end

  test "should create meal_log" do
    assert_difference("MealLog.count") do
      post meal_logs_url, params: { meal_log: { Calorie: @meal_log.Calorie, Eat_date: @meal_log.Eat_date, Meal_Name: @meal_log.Meal_Name, Meal_description: @meal_log.Meal_description } }
    end

    assert_redirected_to meal_log_url(MealLog.last)
  end

  test "should show meal_log" do
    get meal_log_url(@meal_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_log_url(@meal_log)
    assert_response :success
  end

  test "should update meal_log" do
    patch meal_log_url(@meal_log), params: { meal_log: { Calorie: @meal_log.Calorie, Eat_date: @meal_log.Eat_date, Meal_Name: @meal_log.Meal_Name, Meal_description: @meal_log.Meal_description } }
    assert_redirected_to meal_log_url(@meal_log)
  end

  test "should destroy meal_log" do
    assert_difference("MealLog.count", -1) do
      delete meal_log_url(@meal_log)
    end

    assert_redirected_to meal_logs_url
  end
end
