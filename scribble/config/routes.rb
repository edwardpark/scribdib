Rails.application.routes.draw do
  devise_for :users
  root :to => "posts#index"

  resources :posts, :users do
    resources :comments
  end

end
