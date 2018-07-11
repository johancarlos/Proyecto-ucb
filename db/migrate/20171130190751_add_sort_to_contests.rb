class AddSortToContests < ActiveRecord::Migration[5.1]
  def change
    add_column :contests, :sort, :integer
  end
end
