class Photo < ApplicationRecord
    has_one_attached :image
    has_many :photo_review, -> { order "created_at DESC" }
end
