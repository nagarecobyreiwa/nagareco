Rails.application.routes.draw do

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
    resources :mypage, contolloer: :users, only: [:index, :show, :edit, :update, :edit_login, :edit_finish]
    resources :addresses, only:[:index, :new, :create, :edit, :update, :destroy]
    resources :delete_user, only: [:show]
    resources :finish, only: [:show]
    resources :cart_items, except:[:new, :show, :edit]
  end

  namespace :admins do
    resources :genres, except:[:show, :new]
    resources :artists, except:[:show, :new]
    resources :labels, except:[:show, :new]
    resources :products, except: [:show]
    resources :users, only: [:index, :show, :edit, :update, :destroy]
    resources :top, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
