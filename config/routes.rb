Rails.application.routes.draw do
  resources :personas
   
  root 'welcome#index'
end
