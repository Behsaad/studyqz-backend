json.array!(@question_likes) do |question_like|
  json.extract! question_like, :id, :user_id, :question_id
  json.url question_like_url(question_like, format: :json)
end
