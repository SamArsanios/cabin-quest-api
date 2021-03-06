module Api
  module V1
    class FavouritesController < ApplicationController
      before_action :authenticate_user

      def index
        @favourites = Cabin.user_favourites(current_user)
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

      def favourites_params
        params.require(:favourite).permit(:user_id, :cabin_id)
      end
    end
  end
end
