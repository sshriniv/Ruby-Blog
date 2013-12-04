json.array!(@posts) do |post|
  json.extract! post, :title, :body, :publish_date, :user_id
  json.url post_url(post, format: :json)
end
