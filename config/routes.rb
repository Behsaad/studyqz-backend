StudyqzBackend::Application.routes.draw do

  resources :universities , shallow: true do

   resources :subjects , shallow: true do

    resources :users, shallow: true do

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
   end #users
  end #subjects
 end #universities
end
