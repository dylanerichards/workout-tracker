class AddWorkoutCategoryIdToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :workout_category_id, :integer
  end
end
