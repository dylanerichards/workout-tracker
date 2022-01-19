class WorkoutCategoriesController < ApplicationController
  def show
    @workout_category = WorkoutCategory.find(params[:id])
    @workouts = @workout_category.workouts
  end
end
