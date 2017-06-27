Rails.application.routes.draw do
  devise_for :views
  devise_for :clientes

  get 'welcome/index'

  resources :productos
  
  root 'welcome#index' 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
