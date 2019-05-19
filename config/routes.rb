Rails.application.routes.draw do
  namespace :users do
    resources :products, only:[:index, :show]
  end
  namespace :admins do
    resources :genres, except:[:show, :new]
    resources :artists, except:[:show, :new]
    resources :labels, except:[:show, :new]
    resources :products, except: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
