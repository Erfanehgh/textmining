json.array!(@users) do |user|
  json.extract! user, :name, :email, :firstarticle, :secondarticle
  json.url user_url(user, format: :json)
end