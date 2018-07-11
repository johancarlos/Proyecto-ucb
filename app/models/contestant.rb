class Contestant < ApplicationRecord
  belongs_to :contest

  mount_uploader :image, ImageUploader
  validates :name, presence: { message: "No puede estar vacío."},  length: { maximum: 100, message: "Nombre demasiado largo." }
  validates :lastname, presence: { message: "No puede estar vacío."},  length: { maximum: 100, message: "Apellido demasiado largo." }
  validates :mail, :email_format => { :message => 'E-mail no válido' }
  validates :cellphone, length: { is: 8, message: "Celular no válido." }, allow_blank: true
  validates :cellphone, presence: { message: "No puede estar vacio." }
  
  validates_processing_of :image
  validate :image_size_validation
  
  validate :contestant_image
  validate :contestant_video
  validate :contestant_song

  def getName
    return name+" "+lastname
  end 
  
  private
  def image_size_validation
    errors[:image] << "debería ser menos de 2 MB" if image.size > 2.megabytes
  end
  def contestant_image
    if !image.present? && contest.typeContest=="Imagen"
      errors.add(:image, "Debe seleccionar una imagen.")
    end
  end 
  
  def contestant_video
    if !video.present? && contest.typeContest=="Video"
      errors.add(:video, "No puede estar vacío.")
    end
  end 

  def contestant_song
    if !song.present? && contest.typeContest=="Audio"
      errors.add(:song, "No puede estar vacío.")
    end
  end 
end
