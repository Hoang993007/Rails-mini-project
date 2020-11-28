class Album < ApplicationRecord
    has_many :photo
    belongs_to :user
end
