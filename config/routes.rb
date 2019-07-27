Rails.application.routes.draw do
  root "home#index"

  get "images/new"
  get "images/show"
  post "/images/create" => "images#create", as: "images_create"

  get "students/mail_record"

  get "employees/search"
  get "employees/download"
  resources :employees

  get "users/download"

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
