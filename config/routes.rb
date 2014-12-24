SubwayStatus::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :alerts
  get '/dashboard' => 'welcome#dashboard'
  get '/ping' => 'welcome#ping'
end
