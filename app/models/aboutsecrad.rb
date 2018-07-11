class Aboutsecrad < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :body1, presence: { message: "el cuerpo del texto no puede estar vacío."}, length: { minimum: 10, message: "cuerpo  demasiado corto." }, length: { maximum: 1200, message: "Cuerpo demasiado largo." }
    validates :title1, presence: { message: "el titulo no puede estar vacío."}, length: { minimum: 3, message: "titulo  demasiado corto." }, length: { maximum: 40, message: "Titulo demasiado largo." }
    validates :body2, presence: { message: "el cuerpo del texto no puede estar vacío."}, length: { minimum: 10, message: "cuerpo  demasiado corto." }, length: { maximum: 1200, message: "Cuerpo  demasiado largo." }
    validates :title2, presence: { message: "el titulo no puede estar vacío."}, length: { minimum: 3, message: "titulo  demasiado corto." }, length: { maximum: 40, message: "Titulo demasiado largo." }
    validates :body3, presence: { message: "el cuerpo del texto no puede estar vacío."}, length: { minimum: 10, message: "cuerpo  demasiado corto." }, length: { maximum: 1200, message: "Cuerpo demasiado largo." }
    validates :title3, presence: { message: "el titulo no puede estar vacío."}, length: { minimum: 3, message: "titulo  demasiado corto." }, length: { maximum: 40, message: "Titulo demasiado largo." }
    validates_processing_of :image
    validate :image_size_validation
   
    private
      def image_size_validation
        errors[:image] << "should be less than 2MB" if image.size > 2.megabytes
      end
end
