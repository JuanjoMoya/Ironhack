Rails.application.routes.draw do

get '/users/list', to: 'users#list'
get '/users/new', to: 'users#new'
post '/users', to: 'users#create'
get '/users/:id', to: 'users#show'
delete '/users/:id', to: 'users#destroy', as: :users_destroy

get '/products', to: 'products#index'
get '/products/new', to: 'products#new'
get '/products/:id', to: 'products#show'
post 'products', to: 'products#create'
delete '/users/:user_id/products/:id', to: 'products#destroy', as: :products_destroy

post '/bids', to: 'bids#create'

# get '/products', to: 'products#index'
#
# resources :users do
# 	resources :products
# end

end
