class ContactsController < ApplicationController
  def index
    @all_contacts = Contact.all
    render "index.html.erb"
  end
  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end
  def new
    render "new.html.erb"
  end

  def create
    @new_contact = Contact.create(first_name: params[:first_name_param], last_name: params[:last_name_param], email: params[:email_param], phone_number: params[:phone_number_param])
    render "create.html.erb"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(first_name: params[:first_name_param], last_name: params[:last_name_param], email: params[:email_param], phone_number: params[:phone_number_param])
    redirect_to "update.html.erb"
  end



end
