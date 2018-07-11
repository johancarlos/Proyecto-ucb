class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :secret
      t.integer :question_id
      t.integer :option_id

      t.timestamps
    end
  end
end
