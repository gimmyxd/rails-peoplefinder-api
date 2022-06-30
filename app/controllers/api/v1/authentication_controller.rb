# frozen_string_literal: true

module Api
  module V1
    class AuthenticationController < ApplicationController
      skip_before_action :authenticate_request

      def login
        @user = User.find_by(email: params[:email])
        if @user&.authenticate(params[:password])
          token = jwt_encode(user_id: @user.id, sub: params[:email])
          render json: { token: token }, status: :ok
        else
          render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
      end
    end
  end
end
