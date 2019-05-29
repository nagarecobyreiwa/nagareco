Rails.application.routes.draw do

  root "users/products#index"


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
    resources :mypage, only: [:index, :show, :edit, :update]
    resources :addresses, only:[:index, :new, :create, :edit, :update, :destroy]
    resources :delete_user, only: [:show]
    resources :finish, only: [:show]
    resources :cart_items, except:[:new, :show, :edit]
    resources :orders, only:[:index, :new, :create]
    resources :order_histories, only: [:index, :show]
    resources :deliveries, only: [:update]
    resources :thanks_order, only: [:create]
  end

  namespace :admins do
    resources :genres, except:[:show, :new]
    resources :artists, except:[:show, :new]
    resources :labels, except:[:show, :new]
    resources :products, except: [:show]
    resources :disks, only: :destroy
    resources :order_histories, only: [:index, :show]
    resources :users, except: [:new, :create]
    resources :top, only: [:index]
    resources :deliveries, only: [:update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
