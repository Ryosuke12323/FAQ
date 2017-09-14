Rails.application.routes.draw do
  root "qas#index"
  resources :qas, except: :show
end
