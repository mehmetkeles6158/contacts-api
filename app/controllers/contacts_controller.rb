class ContactsController < ApplicationController
  def contact_info
    contact = Contact.first
    render json: {first_contact: contact}
  end

  def contact_all
    contact_all = Contact.all
    render json: {all_contacts: contact_all}

  end


  def contacts_hundred
    
    fake_contacts = []
    
    100.times do
      fake_contacts << ('a'..'z').to_a.shuffle[0,8].join
    end

    render json: {fakers: fake_contacts}
  
  end

end
