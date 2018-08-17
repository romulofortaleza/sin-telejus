class AddActivityToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :activity, foreign_key: true
  end
end
