class CreateActivityRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_roles do |t|
      t.references :activity, foreign_key: true
      t.references :role, foreign_key: true
      t.boolean :granted

      t.timestamps
    end
  end
end
