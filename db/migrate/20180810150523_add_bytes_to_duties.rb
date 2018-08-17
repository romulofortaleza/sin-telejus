class AddBytesToDuties < ActiveRecord::Migration[5.2]
  def change
    add_column :duties, :data, :binary
  end
end
