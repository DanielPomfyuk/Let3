class UsersController < ApplicationController
	before_action :authenticate_user!
  def index
  end
  def create
  	@user = User.new(user_params)
  end
  def new
  	@user = User.new
  end
  def show
  end
  private
  def user_params
  	params.require(:user).permit()
end
