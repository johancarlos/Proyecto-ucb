class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :area
      t.string :name
      t.string :email
      t.integer :cellPhone
      t.integer :inter

      t.timestamps
    end
  end
end
