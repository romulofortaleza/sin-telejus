class CreateUpperComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :upper_components do |t|
      t.string :organ
      t.date :last_update
      t.text :composition
      t.text :address

      t.timestamps
    end
  end
end
