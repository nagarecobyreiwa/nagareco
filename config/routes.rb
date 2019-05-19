Rails.application.routes.draw do

  root "users#top"

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users, only: [:top, :index, :show, :edit, :update] do
   member do
    resources :addresses, only:[:index, :new, :create, :edit, :update, :destroy]
    get :edit_login
    get :edit_finish
   end
  end

  resources :admins, only: [:index] do
    member do
      get :top
    end
  end

end
