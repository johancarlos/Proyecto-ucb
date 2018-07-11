class AddDataendToRadiosecrads < ActiveRecord::Migration[5.1]
  def change
    add_column :radiosecrads, :schedule1, :time
  end
end
