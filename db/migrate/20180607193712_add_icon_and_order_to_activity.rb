class AddIconAndOrderToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :icon, :string
    add_column :activities, :order, :integer
  end
end
