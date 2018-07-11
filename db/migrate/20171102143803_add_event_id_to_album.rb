class AddEventIdToAlbum < ActiveRecord::Migration[5.1]
  def change
    add_reference :albums, :event, foreign_key: true
  end
end
