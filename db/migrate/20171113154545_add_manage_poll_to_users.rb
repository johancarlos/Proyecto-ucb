class AddManagePollToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :managePoll, :boolean, default: false
  end
end
