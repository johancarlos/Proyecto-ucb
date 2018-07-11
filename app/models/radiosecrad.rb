class Radiosecrad < ApplicationRecord
    validates :progration, presence: { message: "No puede estar vacío."}, length: { maximum: 40, message: "Nombre demasiado corto." }
    validates :details, presence: { message: "No puede estar vacío."}, length: { maximum: 120, message: "Detalle demasiado largo." }
    validates :datte, presence:{message: "No puede estar vacío."}
end
