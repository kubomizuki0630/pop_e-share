class Like < ApplicationRecord
  belongs_to :arch
  belongs_to :user
  validates_uniqueness_of :arch_id, scope: :user_id
end
