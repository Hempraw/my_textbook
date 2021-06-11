Rails.application.routes.draw do
  root to: 'textbooks#index'
  resources :textbooks
end
