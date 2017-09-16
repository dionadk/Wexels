Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'pics#index'

  resources :pics do
  resources :comments
  end
  resources :pics do
  resources :taggings
end
  resources :tags


end
