Rails.application.routes.draw do
  resources :messages, only: [:index]

  namespace :api do
  	namespace :v1 do
  		resources :messages, only: [:index, :create]
  		resources :statuses, only: [:update]
  	end
  end
end
