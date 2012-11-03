class IntakeInfo < ActiveRecord::Base
  
    validates :client_first_name, :client_last_name, :email, :dob, :telephone, :reason, :presence => true
end
