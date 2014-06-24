StudyqzBackend::Application.routes.draw do

   resources :users, shallow: true
   resources :universities
   resources :subjects
   resources :user_profiles

   resources :courses, shallow: true do

    resources :course_students
    resources :course_tutors
    resources :course_invitations
      
    resources :questions, shallow: true do

     resources :question_likes
     resources :question_dislikes
     resources :question_learneds
     resources :question_feedbacks

      end #questions
    end #courses

end
