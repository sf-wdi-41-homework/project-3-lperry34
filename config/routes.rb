Rails.application.routes.draw do
  root to: 'main#index'
  get "/signup"  => "user#new"
  get "/login"  => "user#index"

end
