Rails.application.routes.draw do
  root "qas#index"
  resources :qas, except: :show do
    member do
      get "delete_confirm" => 'qas#delete_confirm'
    end
  end
end
