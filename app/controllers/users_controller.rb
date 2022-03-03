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
  def index22
    @users = User.all.order(id: "ASC")
  end
  def index23
    @users = User.all.order(id: "ASC")
  end
  def index24
    @users = User.all.order(id: "ASC")
  end
  def index25
    @users = User.all.order(id: "ASC")
  end
  def index26
    @users = User.all.order(id: "ASC")
  end
end
