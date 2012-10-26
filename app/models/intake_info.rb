class IntakeInfo < ActiveRecord::Base
  
    validates :client_first_name, :client_last_name, :email, :dob, :telephone, :type_of_service, :reason, :location, :presence => true
end
