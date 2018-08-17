class CreateRegistries < ActiveRecord::Migration[5.2]
  def change
    create_table :registries do |t|
      t.integer :code
      t.string :organ
      t.string :county
      t.date :last_update
      t.string :holder
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
