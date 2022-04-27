Rails.application.routes.draw do
  namespace :api do
    get 'quotes', to: 'quotes#index', as: 'quotes'
    get 'quotes/random', to: 'quotes#random', as: 'random'
    get 'quotes/:id', to: 'quotes#show', as: 'show'
    get 'authors', to: 'quotes#authors', as: 'authors'
  end
  get '*path', controller: 'application', action: 'not_found'
end
