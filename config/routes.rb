Rails.application.routes.draw do
  root "home#index"

  get "images/new"
  get "images/show"
  post "/images/create"

  get "students/mail_record"

  get "employees/download"

  get "users/download"

  get "customers/search"
  resources :customers

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
