class Contest < ApplicationRecord
    has_many :contestants, dependent: :destroy

    include RailsSortable::Model
    set_sortable :sort
    mount_uploader :image, ImageUploader
    validates :name, presence: { message: "No puede estar vacío."}, length: { minimum: 3, message: "Nombre demasiado corto." }
    validates :description, presence: { message: "No puede estar vacío."}
    validates :date_start, presence:{message: "No puede estar vacío."}
    validates :date_end, presence:{message: "No puede estar vacío."}
    validates :award, presence: { message: "No puede estar vacío."}
    validates :image, presence: { message: "Debe seleccionar una imagen."}
    validates_processing_of :image
    validate :image_size_validation
    validate :date_start_higher_than_date_end
    validate :date_end_higher_than_date_start

    private
      def image_size_validation
        errors[:image] << "Debería ser menos de 2 MB."if image.size > 2.megabytes
      end

    
    
      def date_start_higher_than_date_end
        if date_start.present? && date_end.present? && date_start > date_end
          errors.add(:date_start, "Fecha inicio no puede ser mayor a Fecha fin.")
        end
      end  
   
      def date_end_higher_than_date_start
        if date_end.present? &&  date_start.present? && date_start > date_end
          errors.add(:date_end, "Fecha fin no puede ser menor a Fecha inicio.")
        end
      end  
end
