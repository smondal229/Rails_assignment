Rails.application.routes.draw do
  root "home#index"

  get "image/new"
  get "image/show"
  post "/image/create" => "image#create", as: "image_create"

  get "student/mail_record"

  resources :employee
  get "employee/download"

  get "user/download"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
