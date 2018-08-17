class CreateAddressOrgans < ActiveRecord::Migration[5.2]
  def change
    create_table :address_organs do |t|
      t.integer :code
      t.string :organ
      t.date :last_update
      t.string :type
      t.string :name
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
