Rails.application.routes.draw do
  root to: 'pages#ask'
  get '/ask', to: 'pages#ask'
  get '/answer', to: 'pages#answer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
