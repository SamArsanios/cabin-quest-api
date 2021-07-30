module Api
  module V1
      class FavouritesController < ApplicationController
        before_action :authenticate_user

        def create
          favourite = user.favourites.new(favourites_params)
          if favourite.save
            render json: favourite#, status: :created
          else
            render json: { error: favourite.errors }#, status: 422
          end
        end

        def destroy
          @favourite = Favourite.find(params[:id])
          if @favourite.destroy
            head :no_content
          else
            render json: { error: @favourite.errors }#, status: 422
          end
        end

        private

        def user
          @user ||= User.find(favourites_params[:user_id])
        end

        def favourites_params
          params.require(:favourite).permit(:user_id, :house_id)
        end

      end        
  end
end