Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #### Blogger ####
  get '/bloggers', to: 'bloggers#index', as: 'bloggers'
  get '/bloggers/new', to: 'bloggers#new', as: 'new_blogger'
  post '/bloggers/', to: 'bloggers#create'
  get '/bloggers/:id', to: 'bloggers#show', as: 'blogger'
  # get '/bloggers/:id/edit', to: 'bloggers#edit', as: 'edit_blogger'
  # patch '/bloggers/:id', to: 'bloggers#update'
  # delete 'bloggers/:id', to: 'bloggers#destroy'
  #### Post #####
  # get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/posts', to: 'posts#create'
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update'
  patch '/posts/:id/like', to: 'posts#like', as: 'like_post'
  patch '/posts/:id/love', to: 'posts#love', as: 'love_post'
  # delete 'posts/:id', to: 'posts#destroy'
  #### Destination ####
  # get '/destinations', to: 'destinations#index', as: 'destinations'
  # get '/destinations/new', to: 'destinations#new', as: 'new_destination'
  # post '/destinations/', to: 'destinations#create'
  get '/destinations/:id', to: 'destinations#show', as: 'destination'
  # get '/destinations/:id/edit', to: 'destinations#edit', as: 'edit_destination'
  # patch '/destinations/:id', to: 'destinations#update'
  # delete 'destinations/:id', to: 'destinations#destroy'
end
