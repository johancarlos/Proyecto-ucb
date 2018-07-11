class AddSortToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :sort, :integer
  end
end
