Rails.application.routes.draw do
  # resources :items
  # resources :sells
  # resources :inventories
  # resources :supervisors
  # resources :sellers
  # resources :stores
  # resources :cities
  # resources :suppiers
  # resources :companies
  # resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ##### ADMIN ROUTES #######
  post "/admin/signin", to: "admins#admin_signin"
  get "/admin/validate", to: "admins#validate"


end
