class ApplicationController < ActionController::API
  # def auth_header
  #   request.headers["Authorization"]
  # end
  #
  # def decoded_token
  #   if auth_header
  #     token = auth_header
  #   end
  # end
  #
  # def current_user
  #   if decoded_token
  #     byebug
  #     user_id = decoded_token[0]["user_id"]
  #     user = User.find_by(id: user_id)
  #   end
  # end
end
