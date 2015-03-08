class UserController < ActionController::Base
  def create
    User.create(user_params)
  end

  private
    def user_params
      params.require(:user).permit(:full_name, :username, :email)
    end
end