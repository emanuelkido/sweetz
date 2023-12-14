Rails.application.routes.draw do
  root 'sweets#index'
  resources :sweets
end
