Rails.application.routes.draw do
 root 'grimoires#index'
  resources :grimoires
end
