class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name
      t.integer :region_id

      t.timestamps
    end
  end
end
