Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json' } do
    resources :users
    resources :entries
    resources :lectures
    resources :rooms
    resources :periods
    resources :lates
  end
end
