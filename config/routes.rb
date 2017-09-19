Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'pics#index'

  resources :pics do
    resources :comments
    resources :tags
    member do
      post 'add_like'
      delete 'remove_like'
    end

  end

end
