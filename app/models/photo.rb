class Photo < ApplicationRecord
    include RailsSortable::Model
    set_sortable :sort  # Indicate a sort column
    mount_uploader :image, ImageUploader
    validates :name, presence: { message: "el nombre no puede estar vacío."}, length: { minimum: 3, message: "Nombre demasiado corto." }, length: { maximum: 30, message: "Nombre demasiado largo." }
    validates :image, presence: { message: "Debe seleccionar una imagen."}
    validates_processing_of :image
    validate :image_size_validation
    belongs_to :album
    private
      def image_size_validation
        errors[:image] << "should be less than 2MB" if image.size > 2.megabytes
      end
end
