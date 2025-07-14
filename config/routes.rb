Rails.application.routes.draw do
  root 'calculator#index'
  resources :calculator, only: [:index]
end
