Rails.application.routes.draw do

  # get '/search_by_name', to: "instructors#search_by_name"
  # get '/search_by_status', to: "instructors#search_by_status"
  # get '/create' to: 'instructors#create'
  resources :instructors
  post '/instructors/login', to: "instructors#login"
  get '/instructor/search', to: 'instructors#search'
  post '/instructors/program', to: 'instructors#create_program'
  post '/catefgory_wise_create', to: 'instructors#create_program_category_wise'

  # resources :programs

  resources :customers
  post '/customers/login', to: 'customers#login'
  get '/customer/search', to: 'customers#search_category_wise_and_name'
  post '/enroll', to: 'customers#enroll_program'
  get '/list_enrolls', to: 'customers#list_enroll_programs'
  post '/update_status', to: 'customers#update_enroll_status'


end
