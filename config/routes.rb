Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/first_contact", to: 'contacts#one_contact_method'
  get "/all_contacts", to: 'contacts#all_contacts_method'
  post "/all_contacts", to: 'contacts#all_contacts_method'
  get "/contacts_form", to: 'contacts#contacts_form'
end
