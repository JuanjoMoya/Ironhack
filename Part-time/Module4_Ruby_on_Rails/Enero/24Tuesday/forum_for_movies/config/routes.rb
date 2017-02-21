Rails.application.routes.draw do
  get '/movies', to: 'movies#search_movie'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
