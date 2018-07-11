class CreateWebPages < ActiveRecord::Migration[5.1]
  def change
    create_table :web_pages do |t|
      t.string :name
      t.text :link
      t.string :image

      t.timestamps
    end
  end
end
