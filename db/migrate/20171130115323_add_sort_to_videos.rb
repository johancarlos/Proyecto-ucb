class AddSortToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :sort, :integer
  end
end
