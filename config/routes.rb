Rails.application.routes.draw do
	get '/user/list', to: 'user#list'
	resources 'user'
	get '/signup', to:'user#new'
       	post '/signup', to:'user#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
