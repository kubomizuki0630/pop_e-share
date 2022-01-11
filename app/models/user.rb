class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :arches
  has_many :likes, dependent: :destroy
  has_many :liked_arches, through: :likes, source: :arch
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  def already_liked?(arch)
    self.likes.exists?(arch_id: arch.id)
  end
end
