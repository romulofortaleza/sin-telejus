class CreateJudgeauxes < ActiveRecord::Migration[5.2]
  def change
    create_table :judgeauxes do |t|
      t.integer :code
      t.string :organ
      t.string :last_update
      t.string :judge_title
      t.text :judge_description

      t.timestamps
    end
  end
end
