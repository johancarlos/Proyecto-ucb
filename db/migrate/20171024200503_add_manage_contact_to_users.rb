class AddManageContactToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manageContact, :boolean, default: false
  end
end
