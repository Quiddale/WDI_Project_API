require 'test_helper'

class WorldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @world = worlds(:one)
  end

  test "should get index" do
    get worlds_url, as: :json
    assert_response :success
  end

  test "should create world" do
    assert_difference('World.count') do
      post worlds_url, params: { world: { image: @world.image, title: @world.title } }, as: :json
    end

    assert_response 201
  end

  test "should show world" do
    get world_url(@world), as: :json
    assert_response :success
  end

  test "should update world" do
    patch world_url(@world), params: { world: { image: @world.image, title: @world.title } }, as: :json
    assert_response 200
  end

  test "should destroy world" do
    assert_difference('World.count', -1) do
      delete world_url(@world), as: :json
    end

    assert_response 204
  end
end
