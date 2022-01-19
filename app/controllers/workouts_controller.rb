class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.last(3)
  end

  def create
    workout = Workout.new(workout_params)

    if workout.save
      redirect_back fallback_location: root_path
    else
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:workout_type, :duration, :date, :workout_category_id)
  end
end
