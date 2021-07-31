module Api
  module V1
    class UserTokenController < Knock::AuthTokenController
      skip_before_action :verify_authenticity_token, raise: false

      def create
        render json: 'string something'
      end
    end
  end
end
