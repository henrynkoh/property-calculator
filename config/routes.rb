Rails.application.routes.draw do
  root 'calculator#index'
  post 'calculator/calculate', to: 'calculator#calculate', as: :calculate
  resources :calculator, only: [:index]
end
