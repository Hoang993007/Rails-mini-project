json.extract! album_review, :id, :user_id, :album_id, :review, :created_at, :updated_at
json.url album_review_url(album_review, format: :json)
