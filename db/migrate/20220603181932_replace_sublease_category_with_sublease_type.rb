class ReplaceSubleaseCategoryWithSubleaseType < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :sublease_category
    add_column :listings, :listing_type, :string
  end
end
