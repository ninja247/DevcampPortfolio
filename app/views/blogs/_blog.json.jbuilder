json.extract! blog, :id, :Title, :body, :created_at, :updated_at
json.url blog_url(blog, format: :json)
