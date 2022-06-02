class CreateFirms < ActiveRecord::Migration[6.0]
  def change
    create_table :firms do |t|
      t.string :name

      t.timestamps
    end
  end
end
