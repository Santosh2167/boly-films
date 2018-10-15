Rails.application.routes.draw do
  # # create
  # get 'movies/new'
  # post 'movies/create'#correct

  
  # # update
  # get 'movies/edit'#correct
  # put 'movies/update'#
  # patch 'movies/update'

  # # Read
  # get 'movies/index', to: 'movies#index'
  # get 'movies/:id/show', to: 'movies#show'

  # #delete
  # delete 'movies/destroy'

  get "movies", to:"movies#index"
  post "movies",to:"movies#create"
  get "movies/new",to: "movies#new"
  get "movies/:id/edit",to:"movies#edit"
  get "movies/:id",to:"movies#show", as: "movie"
  put "movies/:id",to:"movies#update"
  patch "movies/:id",to:"movies#update"
  delete "movies/id", to:"movies#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
