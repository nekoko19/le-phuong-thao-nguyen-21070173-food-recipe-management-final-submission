json.extract! review, :id, :comment, :date, :end_user_id, :recipe_id, :created_at, :updated_at
json.url review_url(review, format: :json)
