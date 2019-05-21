Rails.application.routes.draw do


  get 'delete_user/show'
  root "users/mypage#top"

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

  namespace :users do
    resources :products, only:[:index, :show]
    resources :mypage, contolloer: :users, only: [:top, :index, :show, :edit, :update, :edit_login, :edit_finish]
    resources :addresses, only:[:index, :new, :create, :edit, :update, :destroy]
  end

  namespace :admins do
    resources :genres, except:[:show, :new]
    resources :artists, except:[:show, :new]
    resources :labels, except:[:show, :new]
    resources :products, except: [:show]
    resources :admins, only: [:index]
    get :top
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :delete_user, only: [:show]

end
