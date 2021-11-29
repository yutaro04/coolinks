Rails.application.routes.draw do
  get 'links/search' => 'links#search'
  resources :targets
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'links#index'
  post 'links/index' => 'links#index'
  resources :links,:except => :index
end

