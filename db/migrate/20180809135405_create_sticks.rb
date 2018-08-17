class CreateSticks < ActiveRecord::Migration[5.2]
  def change
    create_table :sticks do |t|
      t.integer :code
      t.string :organ
      t.string :horary
      t.date :last_date
      t.string :judge
      t.string :public_defensor
      t.string :curation
      t.string :promoter
      t.string :address
      t.string :phones
      t.string :circumscription

      t.timestamps
    end
  end
end
