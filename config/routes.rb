Rails.application.routes.draw do
  namespace :admins do
    resources :genres, only:[
                         :index,
                         :create,
                         :edit,
                         :update,
                         :destroy
                       ]
    resources :artists, only:[
                         :index,
                         :create,
                         :edit,
                         :update,
                         :destroy
                       ]
    resources :labels, only:[
                         :index,
                         :create,
                         :edit,
                         :update,
                         :destroy
                       ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
