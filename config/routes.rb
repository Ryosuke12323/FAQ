Rails.application.routes.draw do
  root "qas#index"
  resources :qas, except: :show do
    member do
      get "delete_confirm" => 'qas#delete_confirm'
      get "search" => 'qas#search'
    end
  end
end
