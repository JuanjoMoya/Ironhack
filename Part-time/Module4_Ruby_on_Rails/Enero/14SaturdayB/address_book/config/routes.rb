Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contacts/new', to: 'contacts#new'
  post("/contacts", :to => "contacts#create")
  get '/contacts', to: 'contacts#index'
  post("/contacts/create_favorite", :to => "contacts#favorite")
  get '/contacts/favorite_contacts', to: 'contacts#favorite_contacts'
  post("/contacts/search", :to => "contacts#search")
  get '/contacts/:id', to: 'contacts#show'
end
