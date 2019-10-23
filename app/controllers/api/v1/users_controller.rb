module Api::V1
  class UsersController < ApplicationController

    def index
      @users = User.all

      render json: @users
    end

    # def profile
    #   user = decoded_token
    #   render json: { user: UserSerializer.new(user)}, status: :accepted
    # end

    def show
      @user = User.find(params[:encoded_id])

      render json: @user
    end

    def user_params
      params.permit(:firstName, :encoded_id)
    end

  end
end
