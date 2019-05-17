Rails.application.routes.draw do



  root "users#top"

  get "/edit_finish/", to: "users#update"

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

  resources :users, only: [:top, :show, :edit, :update] do
    member do
    resources :addresses, only:[:index, :new, :create, :edit, :update, :destroy]
    get :edit_login
    get :edit_address
   end
  end

end
