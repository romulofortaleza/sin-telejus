class CreateComponentCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :component_courts do |t|
      t.string :code
      t.string :organ
      t.date :last_update
      t.string :public_defender
      t.text :composition

      t.timestamps
    end
  end
end
