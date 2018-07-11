class CreateHome < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
     t.boolean :showq
    end
   
  end
end
