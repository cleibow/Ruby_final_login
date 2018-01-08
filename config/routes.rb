Rails.application.routes.draw do
  get 'main' => "application#index", as: "main"
  get 'like/:id' => "likes#create", as: "like"
  delete 'like/:id' => "likes#destroy", as: "unlike"

  resources :users, only: [:index, :show, :create]
  resources :sessions, only: [:new, :create, :destroy]

end

# main GET    /main(.:format)             application#index
# like GET    /like/:id(.:format)         likes#create
# unlike DELETE /like/:id(.:format)         likes#destroy
# bright_ideas GET    /bright_ideas(.:format)     bright_ideas#index
#      POST   /bright_ideas(.:format)     bright_ideas#create
# bright_idea GET    /bright_ideas/:id(.:format) bright_ideas#show
# users GET    /users(.:format)            users#index
#      POST   /users(.:format)            users#create
# user GET    /users/:id(.:format)        users#show
# sessions POST   /sessions(.:format)         sessions#create
# new_session GET    /sessions/new(.:format)     sessions#new
# session DELETE /sessions/:id(.:format)     sessions#destroy
