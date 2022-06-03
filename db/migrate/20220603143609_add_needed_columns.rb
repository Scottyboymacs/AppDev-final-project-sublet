class AddNeededColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :buildings, :user_id, :integer
    add_column :buildings, :listing_id, :integer
    add_column :listings, :name, :string

  end
end
