Rails.application.routes.draw do
  resources :postings

  post '/login' => 'authentication#login'
  get '/authenticate' => 'authentication#authenticate'
  get '/api_index' => 'postings#api_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
