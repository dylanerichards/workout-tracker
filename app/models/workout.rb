class Workout < ApplicationRecord
  belongs_to :workout_category

  before_create :store_day_of_week

  def store_day_of_week
    day_of_week = self.date.strftime("%A")
    self.day_of_week = day_of_week
  end
end
