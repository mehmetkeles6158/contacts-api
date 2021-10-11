
class Contact

  attr_accessor :first_name, :last_name, :email, :phone_number

  def initialize(input_options)
    @first_name = input_options["first_name"]
    @last_name = input_options["last_name"]
    @email = email["email"]
    @phone_number = input_options["phone_number"]
  end

end


