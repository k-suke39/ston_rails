Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/index' => 'users#index'
  get '/login' => 'users#login_form'
  post '/login' => 'users#login'
  
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update', as: 'post_update'
  post 'posts/:id/delete' => 'posts#delete'
end
