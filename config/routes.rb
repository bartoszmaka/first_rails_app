Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :articles do
    resources :comments
  end
  # get '/articles/:id', to: 'articles#random', as: 'random_article'
  # get '/articles', to: 'articles#index'
  # get '/articles/:id', to: 'articles#show', as: 'article'
end