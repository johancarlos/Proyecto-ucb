class CreateAboutsecrads < ActiveRecord::Migration[5.1]
  def change
    create_table :aboutsecrads do |t|
      t.string :image
      t.string :title1
      t.text :body1
      t.string :title2
      t.text :body2
      t.string :title3
      t.text :body3

      t.timestamps
    end
    
    Aboutsecrad.create  :title1 => "Acerda del Secrad", 
                        :body1 => "El secrad es..", :title2 => "Historia Secrad", 
                        :body2 => "La historia secrad es..", :title3 => "Mision y Vision", 
                        :body3 => "La mision del secrad es.."
    
  end
end
