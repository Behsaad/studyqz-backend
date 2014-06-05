json.array!(@question_dislikes) do |question_dislike|
  json.extract! question_dislike, :id, :user_id, :question_id
  json.url question_dislike_url(question_dislike, format: :json)
end
