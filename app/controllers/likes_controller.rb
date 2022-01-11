class LikesController < ApplicationController
  def create
    like = current_user.likes.create(arch_id: params[:arch_id]) #user_idとarch_idの二つを代入
  end

  def destroy
    like = Like.find_by(arch_id: params[:arch_id], user_id: current_user.id)
    like.destroy
  end
end
