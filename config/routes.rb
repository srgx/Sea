Rails.application.routes.draw do
  get 'main/index'

  resources :products do
    resources :reviews
  end

  root 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
