class ArchsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @today = Date.today
    @now = Time.now
    if params[:search] != nil && params[:search] != ''
      #部分検索かつ複数検索
      search = params[:search]
      @archs = Arch.where("body LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%").order(id: "DESC").page(params[:page])
    else
      @archs = Arch.where(release:1).order(id: "DESC").page(params[:page]).per(6)
    end  end

  def show
    @arch = Arch.find(params[:id])
    @comments = @arch.comments
    @comment = Comment.new
  end

  def new
    @arch = Arch.new
  end

  def create
    @arch = Arch.new(arch_params)
    @arch.user_id = current_user.id
    if @arch.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def edit
    @arch = Arch.find(params[:id])
  end

  def update
    arch = Arch.find(params[:id])
    if arch.update(arch_params)
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    @arch = Arch.find(params[:id])
    @arch.destroy
    redirect_to action: :index
  end

  private
  def arch_params
    params.require(:arch).permit(:body,:title, :image,:release)
  end

end
