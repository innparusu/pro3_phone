Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json' } do
    resources :users do
      member do
        post 'signin'
      end
    end
    resources :entries
    resources :lectures do
      collection do
        get 'show_all_by_period_and_day'
        get 'show_all_by_user'
      end
    end
    resources :rooms
    resources :periods
    resources :lates
  end
end
