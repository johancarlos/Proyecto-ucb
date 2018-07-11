class WebPage < ApplicationRecord

     include RailsSortable::Model
    set_sortable :sort
    mount_uploader :image, ImageUploader
    
    validates :link, presence: { message: "No puede estar vacío."}
    validates :link, url: { message: "URL no válida."}
    validates :image, presence: { message: "Debe seleccionar una imagen."}
    validates_processing_of :image
    validate :image_size_validation

    private
      def image_size_validation
        errors[:image] << "Debería ser menos de 2 MB." if image.size > 2.megabytes
      end
end
