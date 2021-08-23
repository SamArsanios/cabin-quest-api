Rails.application.routes.draw do
  #post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
        resources :users, only: [:create, :index]
        resources :cabins
        resources :image_uploaders, only: [:create]
        resources :favourites, only: [:destroy, :create, :index]
        resources :user_token, only: [:create]
    end
  end
end
