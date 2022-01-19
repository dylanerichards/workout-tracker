# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
workout_types = ["run", "walk", "swim", "bike"]
durations = [15, 30, 60, 90, 120]

require 'time'
t1 = DateTime.parse("2021-01-01 14:40:34")
t2 = DateTime.parse("2022-01-01 16:20:23")

1000.times do
  Workout.create(
    workout_type: workout_types.sample,
    duration: durations.sample,
    date: rand(t1..t2)
  )
end

5000.times do
  Workout.create(
    workout_type: "run",
    duration: durations.sample,
    date: rand(t1..t2)
  )
end
