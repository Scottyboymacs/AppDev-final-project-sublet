class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.string :caption
      t.integer :listing_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
