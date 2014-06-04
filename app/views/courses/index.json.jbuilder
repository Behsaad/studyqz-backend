json.array!(@courses) do |course|
  json.extract! course, :id, :name, :lecturer, :semester, :subject_id, :university_id, :user_id
  json.url course_url(course, format: :json)
end
