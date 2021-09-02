module Api
  module V1
    class ImageUploadersController < ApplicationController
      def create
        image = Cloudinary::Uploader.upload(image_uploader_params[:image])
        item = { image: image['url'] }
        render json: item
      end

      def image_uploader_params
        params.require(:uploader).permit(:image)
      end
    end
  end
end
