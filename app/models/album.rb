class Album < ApplicationRecord
    has_many :photo
    belongs_to :user
    has_many :album_review, -> { order "created_at DESC"}
end
