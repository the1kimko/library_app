Rails.application.routes.draw do
  root "books#index"

  resources :books do
    resources :borrowings, only: [:create, :update]
  end

  get "borrowings", to: "borrowings#index", as: "borrowings"
end
