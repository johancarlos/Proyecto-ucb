class AddSongToContestant < ActiveRecord::Migration[5.1]
  def change
    add_column :contestants, :song, :string
  end
end
