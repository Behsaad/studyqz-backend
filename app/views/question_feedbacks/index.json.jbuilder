json.array!(@question_feedbacks) do |question_feedback|
  json.extract! question_feedback, :id, :user_id, :question_id, :message
  json.url question_feedback_url(question_feedback, format: :json)
end
