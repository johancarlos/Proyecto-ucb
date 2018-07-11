class Album < ApplicationRecord
  include RailsSortable::Model
  set_sortable :sort  # Indicate a sort column
  has_many :photos, dependent: :destroy
  has_many :videos, dependent: :destroy
  validates :name, presence: { message: "No puede estar vacío."}, length: { minimum: 3, message: "Nombre demasiado corto." }
  validates :name, length: { maximum: 150, message: "Nombre demasiado largo." }

  belongs_to :event, optional: true
end
