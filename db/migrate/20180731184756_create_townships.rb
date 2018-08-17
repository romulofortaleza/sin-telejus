class CreateTownships < ActiveRecord::Migration[5.2]
  def change
    create_table :townships do |t|
      t.string :entrance
      t.integer :code
      t.string :nucleus
      t.date :last_update
      t.string :district
      t.text :forum
      t.string :address
      t.string :phone
      t.string :supervisor
      t.string :assistant
      t.text :relantionship
      t.text :judicial_districts
      t.text :titular_jugde
      t.text :responsiblej
      t.text :promoter_owner
      t.text :promoter_change
      t.text :public_defender
      t.text :team
      t.text :componentsj

      t.timestamps
    end
  end
end
