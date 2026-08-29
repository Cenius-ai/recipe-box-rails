Rails.application.routes.draw do
  root "pages#home"
  resources :recipes, only: [:index, :show]
end
