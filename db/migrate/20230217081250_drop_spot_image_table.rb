class DropSpotImageTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :spot_images
  end
end
