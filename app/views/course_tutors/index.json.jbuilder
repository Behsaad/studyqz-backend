json.array!(@course_tutors) do |course_tutor|
  json.extract! course_tutor, :id, :user_id, :course_id
  json.url course_student_url(course_tutor, format: :json)
end
