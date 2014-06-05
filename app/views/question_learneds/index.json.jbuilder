json.array!(@question_learneds) do |question_learned|
  json.extract! question_learned, :id, :user_id, :question_id
  json.url question_learned_url(question_learned, format: :json)
end
