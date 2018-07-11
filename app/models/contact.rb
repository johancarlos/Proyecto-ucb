class Contact < ApplicationRecord

    include RailsSortable::Model
    set_sortable :sort
    validates :area, presence: { message: "No puede estar vacío."}
    validates :name, presence: { message: "No puede estar vacío."}
    validates :email, :email_format => { :message => 'E-mail no válido.' }
    validates :cellPhone, length: { is: 8, message: "Celular no válido." }, allow_blank: true
    validates :inter, presence: { message: "No puede estar vacío."}, length: { maximum: 6, message: "Demasiado largo." }
end
