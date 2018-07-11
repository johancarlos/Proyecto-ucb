class CreateRadiosecrads < ActiveRecord::Migration[5.1]
  def change
    create_table :radiosecrads do |t|
      t.string :progration
      t.time :schedule
      t.string :details
      t.date :datte

      t.timestamps
    end
  end
end
