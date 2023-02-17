class CreateSpotReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :spot_reviews do |t|
      t.text :content, null: false
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
