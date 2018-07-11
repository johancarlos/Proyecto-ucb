class Event < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_one :album, dependent: :destroy

  validates :name, presence: { message: "No puede estar vacío."}, length: { minimum: 3, message: "Nombre demasiado corto." }
  validates :name, length: { maximum: 80, message: "Nombre demasiado largo." }
  validates :description, presence: { message: "No puede estar vacío."}, length: { maximum: 1024, message: "Descripcion demasiado largo." }
  validates :place, presence: { message: "No puede estar vacío."} , length: { maximum: 80, message: "Lugar demasiado largo." }
  validates :date, presence:{message: "No puede estar vacío."}
  validates :date_end, presence:{message: "No puede estar vacío."}

  validates :image, presence: { message: "Debe seleccionar una imagen."}
  validates_processing_of :image
  validate :image_size_validation
  validate :date_start_higher_than_date_end
  validate :date_end_higher_than_date_start

  private
    def image_size_validation
      errors[:image] << "debería ser menos de 2 MB" if image.size > 2.megabytes
    end
    
    def date_start_higher_than_date_end
      if date.present? && date_end.present? && date > date_end
        errors.add(:date, "Fecha inicio no puede ser mayor a Fecha fin")
      end
    end  
 
    def date_end_higher_than_date_start
      if date_end.present? &&  date.present? && date > date_end
        errors.add(:date_end, "Fecha fin no puede ser menor a Fecha inicio")
      end
    end  

end
