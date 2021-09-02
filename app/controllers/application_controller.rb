class ApplicationController < ActionController::API
  include Knock::Authenticable

  private

  def user_params
    params.require(:user).permit(:username,
                                 :email, :password,
                                 :password_confirmation,
                                 :firstname,
                                 :lastname)
  end
end
