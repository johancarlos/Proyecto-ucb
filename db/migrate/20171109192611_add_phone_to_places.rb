class AddPhoneToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :phone, :int
  end
end
