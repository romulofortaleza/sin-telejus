class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :description
      t.string :action
      t.boolean :isMenu

      t.timestamps
    end
  end
end
