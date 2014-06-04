json.array!(@users) do |user|
  json.extract! user, :id, :facebookid, :boosts, :jokers, :xp, :university_id, :subject_id
  json.url user_url(user, format: :json)
end
