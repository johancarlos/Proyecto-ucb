class AddManageRadioToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manageRadio, :boolean, default: false
  end
end
