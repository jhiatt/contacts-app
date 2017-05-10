class ContactsController < ApplicationController
  def one_contact_method
    @contact = Contact.first
    render "contacts_view.html.erb"
  end
  def all_contacts_method
    @all_contacts = Contact.all
    render "all_contacts.html.erb"
  end
  def contacts_form
    render "contacts_form.html.erb"
  end
end
