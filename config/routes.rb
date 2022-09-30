Rails.application.routes.draw do
  devise_for :users

  post :foo, to: "home#bar", path: '/baz/:id/floop'
  get :test, to: "home#test"

  root "home#index"

end
