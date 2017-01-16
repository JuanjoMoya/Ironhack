class ContactsController < ApplicationController

  def index
    @contacts = Contact.all.order(name: :asc)
  end

  def new
    @contact = Contact.new
  end

  def create
    name = params[:contact][:name]
    address = params[:contact][:address]
    phone_number = params[:contact][:phone_number]
    email_address = params[:contact][:email_address]

    if Contact.contact_validate(name,address,phone_number,email_address)

      contact = Contact.new(
        :name => params[:contact][:name],
        :address => params[:contact][:address],
        :phone_number => params[:contact][:phone_number],
        :email_address => params[:contact][:email_address])
      contact.save
      redirect_to("/contacts")
    else
      render plain: "incorrect details"
    end
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    unless @contact
      render plain: "contact_not_found"
    end
  end

  def favorite
#    contact = Contact.find(params[:contact][:id])
    contact = Contact.find_by(id: params[:id])
    contact.favorite = true
    contact.save
    redirect_to("/contacts")
  end

  def favorite_contacts
    @contacts = Contact.all.order(name: :asc)
  end

  def search
    @first_letter = params[:first_letter]
    @contacts = Contact.all.order(name: :asc)
  end

end
