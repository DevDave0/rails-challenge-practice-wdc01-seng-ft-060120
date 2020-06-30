Rails.application.routes.draw do
  get 'employees/new'

  get 'employees/edit'

  get 'employees/show'

  get 'employees/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buildings
  resources :companies
end
