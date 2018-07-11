class RenameTypeOnContestsForTypeContest < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :contests, :type, :typeContest
  end
end
