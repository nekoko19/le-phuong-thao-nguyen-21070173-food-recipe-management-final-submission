json.extract! recipe, :id, :title, :publication_date, :description, :calories_per_serving, :category_id, :review, :instruction, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
