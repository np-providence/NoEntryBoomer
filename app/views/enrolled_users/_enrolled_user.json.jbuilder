json.extract! enrolled_user, :id, :name, :userId, :photoEncoding, :created_at, :updated_at
json.url enrolled_user_url(enrolled_user, format: :json)
