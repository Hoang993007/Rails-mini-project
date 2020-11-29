class AddNameToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :name, :text
  end
end
