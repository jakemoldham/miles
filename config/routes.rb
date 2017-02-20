Rails.application.routes.draw do
  root 'static_pages#index'

  post "static_pages/guest", to: "static_pages#guest", as: :static_pages_guest

  devise_for :users
end
