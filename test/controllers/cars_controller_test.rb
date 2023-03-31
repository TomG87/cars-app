require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "show" do
    get "/cars/#{Car.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "brand", "model", "color", "year"], data.keys
  end
end
