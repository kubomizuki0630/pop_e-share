class CreateArches < ActiveRecord::Migration[6.0]
  def change
    create_table :arches do |t|
      t.text :body

      t.timestamps
    end
  end
end
