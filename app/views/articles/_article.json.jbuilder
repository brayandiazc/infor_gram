json.extract! article, :id, :title, :content, :location_id, :user_id, :available, :created_at, :updated_at
json.url article_url(article, format: :json)
