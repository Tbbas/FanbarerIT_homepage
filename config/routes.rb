Rails.application.routes.draw do

  root 'static_pages#home'
  get '/events', to:'static_pages#events'
  get '/members', to: 'static_pages#members'
  get '/images/new', to: 'images#new'
  post '/images/new', to: 'images#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
