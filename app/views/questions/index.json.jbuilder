json.array!(@questions) do |question|
  json.extract! question, :id, :course_id, :question, :answer1, :answer2, :answer3, :answer1correct, :answer2correct, :answer3correct, :explanation, :linkurl, :linkname, :user_id
  json.url question_url(question, format: :json)
end
