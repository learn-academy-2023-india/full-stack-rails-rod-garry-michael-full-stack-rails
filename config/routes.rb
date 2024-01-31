Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  get '/blogs', to: 'blog#index', as: 'blogs'
  get '/blogs/new', to: 'blog#new', as: 'new'
  post '/blogs', to: 'blog#create'
  get '/blogs/:id', to: 'blog#show', as: 'blog'
  
end

