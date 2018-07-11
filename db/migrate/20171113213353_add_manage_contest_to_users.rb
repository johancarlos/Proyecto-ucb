class AddManageContestToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manageContest, :boolean, default: false
  end
end
