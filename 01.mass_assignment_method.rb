class UserController < ActionController::Base
  def create
    User.create(params[:user])
  end
end