module Api
  module V1
    class FavouritesController < ApplicationController
      before_action :authenticate_user

      def index
        @favourites = user_fa
        render json: @favourites
      end

      def create
        favourite = current_user.favourites.build(favourites_params)
        if favourite.save
          render json: favourite, status: :created
        else
          render json: { error: favourite.errors }, status: 422
        end
      end

      def show; end

      def destroy
        @favourite = Favourite.find_by(cabin_id: params[:id])
        if @favourite.destroy
          head :no_content
        else
          render json: { error: @favourite.errors }, status: 422
        end
      end

      private

      def user_fa 
        cabin_ids = current_user.favourites.pluck(:cabin_id) 
        fa_cabins = current_user.cabins.where(id: cabin_ids) 
        fa_cabins.ordered_by_most_recent
      end 

      # def user
      #   @user ||= User.find(favourites_params[:user_id])
      # end

      def favourites_params
        params.require(:favourite).permit(:user_id, :cabin_id)
      end
    end
  end
end
