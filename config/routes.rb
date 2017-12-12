Rails.application.routes.draw do
  root to: 'main#index'
  get '/login' => 'sessions#new'
      post '/login' => 'sessions#create'
      get '/logout' => 'sessions#destroy'
      get '/signup' => 'user#new'
      post '/signup' => 'user#create'
      get '/sources' => 'main#show'
      get '/read' => 'main#feed'
      get '/profile' => 'user#show'
      post '/save' => 'user#article', as: 'save'
      get '/save' => 'user#show'
      delete '/article/:id' => 'user#article_destroy', as: 'destroy_article'
end
