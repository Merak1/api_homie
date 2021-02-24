class ApplicationController < ActionController::API
  # before_action :ghetto_jwt

  # def ghetto_jwt
  #   token = request.headers["TOKEN"]
  #   head :forbidden unless token
  #   head :forbidden unless valid_token(token)
  # end

  # private

  # def valid_token(token)
  #   test = "555"
  #   token == test
  # end
end
