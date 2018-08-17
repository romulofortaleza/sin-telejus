class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :locate
      t.string :room
      t.string :last_update
      t.text :phones

      t.timestamps
    end
  end
end
