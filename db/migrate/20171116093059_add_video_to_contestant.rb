class AddVideoToContestant < ActiveRecord::Migration[5.1]
  def change
    add_column :contestants, :video, :string
  end
end
