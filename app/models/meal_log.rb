class MealLog < ApplicationRecord
    validates :Meal_Name, presence: true
    validates :Calorie, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
