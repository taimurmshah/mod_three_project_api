Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :messages, only: [:index, :create, :update, :delete]
      resources :chat_rooms, only: [:index, :create, :update, :delete]
    end
  end


end
