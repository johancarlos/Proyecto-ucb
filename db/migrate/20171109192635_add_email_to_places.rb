class AddEmailToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :email, :string
  end
end
