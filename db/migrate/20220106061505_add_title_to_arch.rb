class AddTitleToArch < ActiveRecord::Migration[6.0]
  def change
    add_column :arches, :title, :string
  end
end
