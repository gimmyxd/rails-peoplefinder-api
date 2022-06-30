# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate_request, only: [:create]
      before_action :set_user, only: %i[show destroy]
      def show
        render json: { success: true, data: User.first.as_json(except: :password_digest) }
      end

      def index
        render json: { success: true, data: User.all.as_json(except: :password_digest) }
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: { success: true, user: @user.as_json(except: :password_digest) }
        else
          render json: { success: false, errors: @user.errors.full_messages }
        end
      end

      def update
        render json: { success: true }
      end

      def destroy
        render json: { success: true }
      end

      private

      def user_params
        params.require(:user).permit(:email, :password)
      end

      def set_user
        @user = User.find(params[:id])
      end
    end
  end
end
