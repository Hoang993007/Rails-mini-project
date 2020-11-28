class AddAlbumIdToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :album_id, :integer
  end
end
