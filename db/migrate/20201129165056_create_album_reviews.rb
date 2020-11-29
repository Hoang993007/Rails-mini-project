class CreateAlbumReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :album_reviews do |t|
      t.integer :user_id
      t.integer :album_id
      t.text :review

      t.timestamps
    end
  end
end
