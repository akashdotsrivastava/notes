Rails.application.routes.draw do
  resources :notes
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "notes#index"
end
