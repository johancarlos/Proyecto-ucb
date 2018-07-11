class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.text :address
      t.string :image

      t.timestamps
    end
  end
end
