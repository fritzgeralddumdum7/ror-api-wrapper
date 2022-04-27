Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    get 'quotes', to: 'quotes#index', as: 'quotes'
    get 'quotes/random', to: 'quotes#random', as: 'random'
    get 'quotes/:id', to: 'quotes#show', as: 'show'
  end
end
