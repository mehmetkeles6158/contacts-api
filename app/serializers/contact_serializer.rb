class ContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :latitude, :longitude, :is_cool_name?
end
