class UsersController < ApplicationController
  def new
    @users = User.new
  end

  def create
    User.create(user_params)
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
