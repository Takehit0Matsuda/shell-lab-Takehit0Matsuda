class CreateMealLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :meal_logs do |t|
      t.datetime :Eat_date
      t.string :Meal_Name
      t.text :Meal_description
      t.integer :Calorie

      t.timestamps
    end
  end
end
