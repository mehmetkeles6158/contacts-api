class Contact < ApplicationRecord

  def is_cool_name?

    if first_name.length > 5
      p "It is a cool name!"
    else
      p "Your name is also good!"
    end

  end
end
