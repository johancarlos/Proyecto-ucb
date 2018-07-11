class AddSortToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :sort, :integer
  end
end
