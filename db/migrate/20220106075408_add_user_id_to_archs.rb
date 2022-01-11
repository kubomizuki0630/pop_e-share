class AddUserIdToArchs < ActiveRecord::Migration[6.0]
  def change
    add_column :arches, :user_id, :integer
  end
end
