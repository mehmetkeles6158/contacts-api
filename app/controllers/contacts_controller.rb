class ContactsController < ApplicationController
  def index

    contacts = Contact.all
    render json: contacts.as_json
   
  end

  def show

    the_id = params[:id]
    contact = Contact.find_by(id:the_id)
    render json:contact.as_json

  end

  def create

    contact = Contact.new(
    first_name: params[:input_first_name],
    last_name: params[:input_last_name],
    email: params[:input_email],
    phone_number: params[:input_phone_number],
    latitude: params[:input_latitude],
    longitude: params[:input_longitude]
    )
    contact.save
    render json:contact.as_json
  end

  # def update
  #   the_id = params[:id]
  #   contact = Contact.find_by(id: the_id)

  #   contact.first_name = params[:input_first_name] || contact.first_name 
  #   contact.last_name = params[:input_last_name]   || contact.last_name 
  #   conttact.email = params[:input_email] ||  contact.email
  #   contact.phone_number = params[:input_phone_number] ||  contact.phone_number
  #   contact.latitude = params[:input_latitude] ||  contact.latitude
  #   contact.longitude = params[:input_longitude] ||  contact.longitude

  #   contact.save
  #   render json:contact.as_json


  # end

  # def destroy

  #   contact = Contact.find_by(id: params[:id])
  #   contact.destroy
  #   render json:contact.as_json
  # end


  # def contacts_hundred
    
  #   100.times do
  #     contact1 = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone)
  #     contact1.save
  #   end
  #   render json: {fakers: contacts_hundred}
  
  # end

 

end
