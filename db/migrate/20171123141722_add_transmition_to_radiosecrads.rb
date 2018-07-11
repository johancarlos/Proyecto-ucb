class AddTransmitionToRadiosecrads < ActiveRecord::Migration[5.1]
  def change
    add_column :radiosecrads, :transmition, :string
  end
end
