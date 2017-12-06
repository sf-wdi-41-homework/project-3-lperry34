Rails.application.routes.draw do
  root to: 'main#index'
  get '/login' => 'sessions#new'
      post '/login' => 'sessions#create'
      get '/logout' => 'sessions#destroy'
      get '/signup' => 'user#new'
      post '/signup' => 'user#create'
      get '/sources' => 'main#show'
      get '/read' => 'main#feed'
end
