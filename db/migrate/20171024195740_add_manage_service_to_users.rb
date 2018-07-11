class AddManageServiceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manageService, :boolean, default: false
  end
end
