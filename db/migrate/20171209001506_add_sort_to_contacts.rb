class AddSortToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :sort, :integer
  end
end
