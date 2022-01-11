class UsersController < ApplicationController
  def index
    @users = User.all.order(id: "ASC")
  end
  def show
    @user = User.find(params[:id]) 
  end
  def admin
    @users = User.all.order(id: "ASC")
  end
end
