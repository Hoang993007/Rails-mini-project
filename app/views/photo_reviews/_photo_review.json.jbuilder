json.extract! photo_review, :id, :user_id, :photo_id, :review, :created_at, :updated_at
json.url photo_review_url(photo_review, format: :json)
