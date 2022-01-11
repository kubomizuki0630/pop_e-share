class AddImageToArches < ActiveRecord::Migration[6.0]
  def change
    add_column :arches, :image, :string
  end
end
