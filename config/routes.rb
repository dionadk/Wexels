Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'pics#index'

  resources :pics do
  resources :comments
  end
  resources :pics do
  resources :taggings
end


  resources :pics do
    member do
      post 'add_tagging'
    end

  end

  resources :tags



end
