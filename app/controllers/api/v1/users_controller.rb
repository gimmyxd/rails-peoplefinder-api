# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def show
        render json: { success: true, data: User.first }
      end

      def index
        render json: { success: true, data: User.all }
      end

      def create
        render json: { success: true }
      end

      def update
        render json: { success: true }
      end

      def destroy
        render json: { success: true }
      end
    end
  end
end
