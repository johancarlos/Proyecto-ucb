class CreateContests < ActiveRecord::Migration[5.1]
  def change
    create_table :contests do |t|
      t.string :name
      t.text :description
      t.string :type
      t.date :date_start
      t.date :date_end
      t.string :award
      t.float :contest_score
      t.string :contest_winner

      t.timestamps
    end
  end
end
