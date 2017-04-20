class UsersController < ApplicationController

  def new
    @new_user = User.new
    @user = User.last
  end

  def create
    @user = User.create(user_params)
    if @user.persisted?
      redirect_to root_path
    else
      render :new
    end
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :image)
  end

end
