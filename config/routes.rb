StudyqzBackend::Application.routes.draw do

  resources :universities , shallow: true do

   resources :subjects , shallow: true do

    resources :users, shallow: true do

     resources :courses, shallow: true do

      resources :questions, shallow: true do

      end #questions
    end #courses
   end #users
  end #subjects
 end #universities
end
