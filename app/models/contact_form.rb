class ContactForm < ActiveRecord::Base
      validates :first_name, :last_name, :location, :email, :telephone, :attention, :message, :presence => true
  
end
