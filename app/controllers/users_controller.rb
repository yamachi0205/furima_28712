class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:family_name, :first_name, :family_name_reading, :first_name_reading, :nickname, :birthday, :email, :password)
  end
end