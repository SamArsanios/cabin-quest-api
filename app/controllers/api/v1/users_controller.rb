module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: %i[show user_favourites update destroy]
      before_action :authenticate_user, except: [:create]

      # GET /users
      # GET /users.json
      def index
        @users = User.all
        render json: @users
        # render :show
      end

      # GET /users/1
      # GET /users/1.json
      def show; end

      def user_favourites
        @cabins = Cabin.all
        @user_fav = @user.user_favs(@user, @cabins)
        render json: @user_fav
      end

      # POST /users
      # POST /users.json
      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user
          # render :show
        else
          render json: @user.errors
        end
      end

      # PUT /users/1
      # PUT /users/1.json
      def update
        if current__user.isAdmin || current__user == @user
          if @user.update(user_params)
            render json: @user
          else
            render json: @user.errors
          end
        else
          render json: 'Sorry you are not allowed to perform this operation.'
        end
      end

      def find_user
        @user = User.find_by!(username: params[:username])
        if @user
          render json: @user
        else
          render json: @user.errors
        end
      end

      # DELETE /users/1.json
      def destroy
        if current__user.isAdmin
          @user.destroy
        else
          render json: 'Sorry you are not allowed to perform this operation.'
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:username,
                                     :email, :password,
                                     :password_confirmation,
                                     :firstname,
                                     :lastname)
      end
    end
  end
end
