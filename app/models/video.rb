class Video < ApplicationRecord
  include RailsSortable::Model
  set_sortable :sort  # Indicate a sort column
  validates :title, presence: { message: "El nombre no puede estar vacío."}, length: { minimum: 3, message: "Nombre demasiado corto." }, length: { maximum: 30, message: "Nombre demasiado largo." }
  validates :link, presence: { message: "Debe ingresar un enlace de youtube."}
  belongs_to :album
end
