require "test_helper"

class TennantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tennant = tennants(:one)
  end

  test "should get index" do
    get tennants_url, as: :json
    assert_response :success
  end

  test "should create tennant" do
    assert_difference('Tennant.count') do
      post tennants_url, params: { tennant: { availability: @tennant.availability, email: @tennant.email, name: @tennant.name, phone: @tennant.phone } }, as: :json
    end

    assert_response 201
  end

  test "should show tennant" do
    get tennant_url(@tennant), as: :json
    assert_response :success
  end

  test "should update tennant" do
    patch tennant_url(@tennant), params: { tennant: { availability: @tennant.availability, email: @tennant.email, name: @tennant.name, phone: @tennant.phone } }, as: :json
    assert_response 200
  end

  test "should destroy tennant" do
    assert_difference('Tennant.count', -1) do
      delete tennant_url(@tennant), as: :json
    end

    assert_response 204
  end
end
