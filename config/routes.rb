Rails.application.routes.draw do

  get '/help', to: 'static_pages#help'

  root 'static_pages#home'
end
