require "application_system_test_case"

class MealLogsTest < ApplicationSystemTestCase
  setup do
    @meal_log = meal_logs(:one)
  end

  test "visiting the index" do
    visit meal_logs_url
    assert_selector "h1", text: "Meal logs"
  end

  test "should create meal log" do
    visit meal_logs_url
    click_on "New meal log"

    fill_in "Calorie", with: @meal_log.Calorie
    fill_in "Eat date", with: @meal_log.Eat_date
    fill_in "Meal name", with: @meal_log.Meal_Name
    fill_in "Meal description", with: @meal_log.Meal_description
    click_on "Create Meal log"

    assert_text "Meal log was successfully created"
    click_on "Back"
  end

  test "should update Meal log" do
    visit meal_log_url(@meal_log)
    click_on "Edit this meal log", match: :first

    fill_in "Calorie", with: @meal_log.Calorie
    fill_in "Eat date", with: @meal_log.Eat_date
    fill_in "Meal name", with: @meal_log.Meal_Name
    fill_in "Meal description", with: @meal_log.Meal_description
    click_on "Update Meal log"

    assert_text "Meal log was successfully updated"
    click_on "Back"
  end

  test "should destroy Meal log" do
    visit meal_log_url(@meal_log)
    click_on "Destroy this meal log", match: :first

    assert_text "Meal log was successfully destroyed"
  end
end
