Rails.application.routes.draw do
  root "home#index"
  get "image/new"
  get "image/show"
  get "student/mail_record"
  get "employee/download"
  get "user/download"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
