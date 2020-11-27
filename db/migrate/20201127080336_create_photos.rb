class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title, null: false, default: ""
      t.date :date
      t.text :detail

      t.timestamps
    end
  end
end
