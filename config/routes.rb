Rails.application.routes.draw do
  root 'static_pages#index'

  get "/coming", to: "static_pages#coming", as: :coming
  post "static_pages/guest", to: "static_pages#guest", as: :static_pages_guest

  devise_for :users
end
