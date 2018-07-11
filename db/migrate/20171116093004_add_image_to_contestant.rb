class AddImageToContestant < ActiveRecord::Migration[5.1]
  def change
    add_column :contestants, :image, :string
  end
end
