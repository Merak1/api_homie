require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
    @tennant = tennants(:one)
    @partner =partners(:one)
    @authorization = ActionController::HttpAuthentication::Basic.encode_credentials(@partner.name, @partner.token)
    @headers = {'HTTP_AUTHORIZATION' => @authorization}
  end

  test "should get index" do

    get properties_url, as: :json ,headers: @headers
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      
      post tennant_properties_url(@tennant), params: { property: { description: @property.description, name: @property.name, rental_price: @property.rental_price, tennant_id: @property.tennant_id} }, as: :json ,headers: @headers
    end

    assert_response 201
  end

  test "should show property" do
    get property_url(@property), as: :json , headers: @headers
    assert_response :success
  end

  test "should update property" do

    patch property_url(@property), params: { property: { description: @property.description, name: @property.name, rental_price: @property.rental_price, tennant_id: @property.tennant_id } }, as: :json ,headers: @headers
    assert_response 200
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property), as: :json ,headers: @headers
    end

    assert_response 204
  end
end
