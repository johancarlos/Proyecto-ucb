class AddSortToWebPages < ActiveRecord::Migration[5.1]
  def change
    add_column :web_pages, :sort, :integer
  end
end
