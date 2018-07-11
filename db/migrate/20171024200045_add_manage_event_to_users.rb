class AddManageEventToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manageEvent, :boolean, default: false
  end
end
