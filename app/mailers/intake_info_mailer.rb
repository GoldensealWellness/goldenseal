# class PrivateGroupTourMailer < ActionMailer::Base
#   default :from => "Dev Env <kyle.on.ruby@gmail.com>"
# 
#   def enquiry_email(private_group_tour)
#     @private_group_tour = private_group_tour
#     mail(:to => [ "kyle.ries@gmail.com", @private_group_tour.email ],
#          :subject => "Private Group Tour Enquiry")
#   end
# end

class IntakeInfoMailer < ActionMailer::Base
  default :from => "Goldenseal Wellness <cpmhwellness@gmail.com>"

  def intake_email(intake_information)
    @intake_information = intake_information
    mail(:to => [ "cpmhwellness@gmail.com", @intake_information.email ],
         :subject => "Goldenseal Wellness Intake Form")
  end
end