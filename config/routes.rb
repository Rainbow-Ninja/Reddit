Rails.application.routes.draw do
  devise_for :accounts
  get "u/:username" => "home#profile", as: :profile

  resources :communities do
    resources :posts
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
  
end
