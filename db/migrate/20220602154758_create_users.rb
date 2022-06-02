class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :phone_num
      t.integer :firm_id
      t.integer :school_id
      t.integer :city_id
      t.integer :neighborhood_id
      t.integer :building_id

      t.timestamps
    end
  end
end
