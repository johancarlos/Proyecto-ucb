class AddSortToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :sort, :integer
  end
end
