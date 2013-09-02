SubwayStatus::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :alerts
end
