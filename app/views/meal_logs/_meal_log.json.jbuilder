json.extract! meal_log, :id, :Eat_date, :Meal_Name, :Meal_description, :Calorie, :created_at, :updated_at
json.url meal_log_url(meal_log, format: :json)
