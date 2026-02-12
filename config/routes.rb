Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Root path
  root "rooms#index"

  # Room management
  resources :rooms do
    resources :items, only: [:create, :destroy, :update]
  end

  # Public room sharing (accessed via token)
  namespace :public do
    get '/:token', to: 'rooms#show', as: :room
  end
end
