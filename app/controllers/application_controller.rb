class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  before_action :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      !Partner.find_by(name: username, token: password).nil?
    end
  end
end
