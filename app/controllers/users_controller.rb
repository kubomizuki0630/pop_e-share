class UsersController < ApplicationController
  def index
    @users = User.all.order(id: "DESC")
  end
  def show
    @user = User.find(params[:id])
    @today = Date.today
    @now = Time.now
  end
  def admin
    @users = User.all.order(id: "DESC")
  end
  def index22
    @users = User.all.order(id: "DESC")
  end
  def index23
    @users = User.all.order(id: "DESC")
  end
  def index24
    @users = User.all.order(id: "DESC")
  end
  def index25
    @users = User.all.order(id: "DESC")
  end
  def index26
    @users = User.all.order(id: "DESC")
  end
end
