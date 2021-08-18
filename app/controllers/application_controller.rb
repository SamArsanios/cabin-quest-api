class ApplicationController < ActionController::API
  include Knock::Authenticable

  def find_user
    @user = User.find_by!(username: params[:username])
    if @user
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username,
                                 :email, :password,
                                 :password_confirmation,
                                 :firstname,
                                 :lastname)
  end
end
