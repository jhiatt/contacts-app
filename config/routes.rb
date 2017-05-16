Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/contacts", to: 'contacts#index'
  post "/create", to: 'contacts#create'
  get "/contacts/new", to: 'contacts#new'
  get "/contacts/:id", to: 'contacts#show'
  get "/contacts/:id/edit", to: 'contacts#edit'
  patch "/contacts", to: 'contacts#update'
  get "/contacts/john", to: 'contacts#john'
end
