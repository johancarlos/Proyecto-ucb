class AddDateendToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :date_end, :date
  end
end
