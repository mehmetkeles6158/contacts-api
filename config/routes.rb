Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/first_contact", controller: "contacts",action: "contact_info"

  get "/contacts", controller: "contacts",action: "contact_all"

  get "/fake_contacts", controller: "contacts",action: "contacts_hundred"



end
