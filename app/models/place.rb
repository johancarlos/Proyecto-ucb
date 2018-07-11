class Place < ApplicationRecord

    include RailsSortable::Model
    set_sortable :sort
    mount_uploader :image, ImageUploader
    validates :name, presence: { message: "No puede estar vacío."}
    validates :address, presence: { message: "No puede estar vacío."}
    validates :image, presence: { message: "Debe seleccionar una imagen."}
    validates :email, :email_format => { :message => 'E-mail no válido.' }, allow_blank: true
    validates :phone, length: { is: 7, message: "Teléfono no válido." }, allow_blank: true
    validates_processing_of :image
    validate :image_size_validation

    private
      def image_size_validation
        errors[:image] << "Debería ser menos de 2 MB." if image.size > 2.megabytes
      end 

end
