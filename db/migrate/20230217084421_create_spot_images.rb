class CreateSpotImages < ActiveRecord::Migration[7.0]
  def change
    create_table :spot_images do |t|
      t.references :spot, null: false, foreign_key: true
      t.boolean :main, null: false, default: true

      t.timestamps
    end
  end
end

