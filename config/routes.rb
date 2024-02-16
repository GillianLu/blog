Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/articles', to: 'articles#index', as: :articles #ArticlesController
  get '/articles/new', to: 'articles#new', as: :new_article
  post '/articles', to: 'articles#create'

  get '/articles/:id', to: 'articles#show', as: :article
  get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch '/articles/:id', to: 'articles#update', as: :article_path
  delete '/articles/:id', to: 'articles#destroy'
end
