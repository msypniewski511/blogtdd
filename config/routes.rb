Rails.application.routes.draw do
  get 'pages/show'
  get "up" => "rails/health#show", as: :rails_health_check

  get 'page/:slug', to: 'pages#show', slug: /[-a-z0-9+]*/, as: :page

  # Defines the root path route ("/")
  root 'home#index'
end
