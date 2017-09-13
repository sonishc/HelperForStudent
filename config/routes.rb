Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  get '/help', to: 'static_pages#help'
  root 'static_pages#home'
end
