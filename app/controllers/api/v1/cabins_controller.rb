# rubocop:disable Style/CaseEquality
module Api
  module V1
    class CabinsController < ApplicationController
      before_action :set_cabin, only: %i[show update destroy]
      # before_action :authenticate_user, except: %i[index show]
      before_action :authenticate_user

      # GET /cabins
      # GET /cabins.json
      def index
        @cabins = current_user.cabins.ordered_by_most_recent
        render json: @cabins
      end

      # GET /cabins/1
      # GET /cabins/1.json
      def show
        render json: @cabin
      end

      # POST /cabins
      # POST /cabins.json
      def create
        # @cabin = Cabin.new(cabin_params)
        @cabin = current_user.cabins.build(cabin_params)

        if @cabin.save
          render json: @cabin, status: :created
        else
          render json: @cabin.errors, status: :unprocessable_entity
        end
      end

      # PUT /cabins/1
      # PUT /cabins/1.json
      def update
        if current_user === @cabin.user || current_user.isAdmin
          if @cabin.update(cabin_params)
            render :show, status: :ok
          else
            render json: @cabin.errors, status: :unprocessable_entity
          end
        else
          render json: 'You do not have permission to perform that action!', status: :unprocessable_entity
        end
      end

      # DELETE /cabins/1
      # DELETE /cabins/1.json
      def destroy
        if current_user === @cabin.user || current_user.isAdmin
          @cabin.destroy
        else
          render json: 'You do not have permission to perform that action!', status: :unprocessable_entity
        end
      end

      private

      def set_cabin
        @cabin = Cabin.find(params[:id])
      end

      def cabin_params
        params.require(:cabin).permit(:name, :country, :address, :image, :slug, :region, :location, :user_id)
      end
    end
  end
end
# rubocop:enable Style/CaseEquality
