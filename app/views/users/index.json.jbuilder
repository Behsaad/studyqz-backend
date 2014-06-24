json.array!(@users) do |user|
  json.extract! user, :id, :facebookid, :boosts, :jokers
  json.url user_url(user, format: :json)
end
