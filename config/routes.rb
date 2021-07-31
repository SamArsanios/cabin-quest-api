Rails.application.routes.draw do
  #post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      get '/dashboard/:username', to: 'users#find_user', as: 'user_detail'
      get '/user/:id/favourites', to: 'users#user_favourites', as: 'user_favourites'
      resources :users
      resources :cabins
      resources :image_uploaders, only: [:create]
      resources :favourites, only: [:destroy, :create]


      post '/create/signup', to: 'users#create' 
      post '/auth/signin', to: 'user_token#create'
     
    end
  end
end
