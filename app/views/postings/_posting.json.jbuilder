json.extract! posting, :id, :title, :content, :image_url, :created_at, :updated_at
json.url posting_url(posting, format: :json)
