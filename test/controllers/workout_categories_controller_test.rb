require "test_helper"

class WorkoutCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get workout_categories_show_url
    assert_response :success
  end
end
