class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.index :title, unique: true

      t.timestamps
    end
  end
end
