Rails.application.routes.draw do
  root 'adventures#index'
  resources :adventures
  devise_for :users
end
