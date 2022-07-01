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
  get "/admin/get_menu", to: "admins#get_menu"

  # ##### COMPANY ROUTES ######
  post "/admin/company_create", to: "companies#create_company"
  get "/admin/get_company", to: "companies#get_company"
  
  # ##### SUPPLIER ROUTES ######
  post "/admin/supplier_create", to: "distributors#create_supplier" 
  get "/admin/get_supplier", to: "distributors#get_supplier" 
  get "/admin/get_all_suppliers", to: "admins#all_admin_distributors"
end
