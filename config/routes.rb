Rails.application.routes.draw do
  resources :provinces
  root to: 'finder#index'

  get 'alphabetized' => 'finder#alphabetized', as: 'alphabetized'

  get 'missing_email' => 'finder#missing_email', as: 'missing_email'

  resources :customers, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
