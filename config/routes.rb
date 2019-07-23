Rails.application.routes.draw do
  get 'employee/download'
  get 'user/download'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
