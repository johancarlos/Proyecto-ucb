class Service < ApplicationRecord

    include RailsSortable::Model
    set_sortable :sort
    mount_uploader :image, ImageUploader
    validates :name, presence: { message: "No puede estar vacío."}, length: { minimum: 3, message: "Nombre demasiado corto." }
    validates :description, presence: { message: "No puede estar vacío."}
    validates :image, presence: { message: "Debe seleccionar una imagen."}
    validates_processing_of :image
    validate :image_size_validation

    private
      def image_size_validation
        errors[:image] << "Debería ser menos de 2 MB." if image.size > 2.megabytes
      end
   
end
