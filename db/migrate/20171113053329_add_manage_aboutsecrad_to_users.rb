class AddManageAboutsecradToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manageAboutsecrad, :boolean, default: false
  end
end
