class CreateDuties < ActiveRecord::Migration[5.2]
  def change
    create_table :duties do |t|
      t.string :title
      t.string :file

      t.timestamps
    end
  end
end
