module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: %i[show user_favourites update destroy]
      before_action :authenticate_user, except: [:create]
      # GET /users
      # GET /users.json
      def index
        @user = current_user
        if @user
          render json: @user, status: :ok
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # GET /users/1
      # GET /users/1.json
      def show; end

      # POST /users
      # POST /users.json
      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # PUT /users/1
      # PUT /users/1.json
      def update
        if current__user.isAdmin || current__user == @user
          if @user.update(user_params)
            render json: @user, status: :ok
          else
            render json: @user.errors, status: :unprocessable_entity
          end
        else
          render json: 'Sorry you are not allowed to perform this operation.', status: :unprocessable_entity
        end
      end

      # DELETE /users/1.json
      def destroy
        if current__user.isAdmin
          @user.destroy
        else
          render json: 'Sorry you are not allowed to perform this operation.', status: :unprocessable_entity
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
    end
  end
end
