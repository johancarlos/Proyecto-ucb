class AddContToContests < ActiveRecord::Migration[5.1]
  def change
    add_column :contests, :cont, :int
  end
end
