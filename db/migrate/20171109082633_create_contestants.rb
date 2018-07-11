class CreateContestants < ActiveRecord::Migration[5.1]
  def change
    create_table :contestants do |t|
      t.string :name
      t.string :lastname
      t.string :mail
      t.integer :cellphone
      t.references :contest, foreign_key: true

      t.timestamps
    end
  end
end
