Rails.application.routes.draw do
  get 'users/index'
  resources :radiosecrads
  resources :aboutsecrads
  resources :contests do
    resources :contestants
    collection do
      get 'sortContests'
    end
  end

  resources :web_pages do
    collection do
      get 'sortWebPages'
    end
  end
  resources :places do
    collection do
      get 'sortPlaces'
    end
  end
  devise_for :users, :controllers => { :registrations => 'registrations'}, :path_prefix => 'my'
  resources :users
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  resources :contacts do
    collection do
      get 'sortContacts'
    end
  end
  resources :albums do
    member do
      get 'sort'
    end
    collection do
      get 'sortAlbums'
    end
    resources :photos
    resources :videos
  end

  resources :services do
  
    collection do
      get 'sortServices'
    end
  end

 
 

  root 'home#index'

  resources :services

  resources :events

  resources :home

  resources :listen_page
  resources :questions
  get '/admin' => 'admin#dashboard'
  put '/votes' => 'votes#update'
  get ':secret' => 'questions#show', as: 'options'
  get ':secret/results' => 'questions#results'
  get '/availability/:secret' => 'questions#check_secret_availability'


  post '/ajax/setshowquestion' => 'home#ajax_setshowquestion'
  

end
