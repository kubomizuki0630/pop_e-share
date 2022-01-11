class AddReleaseToArches < ActiveRecord::Migration[6.0]
  def change
    add_column :arches, :release, :integer
    add_column :arches, :rule, :integer
  end
end
