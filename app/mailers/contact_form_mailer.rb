# class PrivateGroupTourMailer < ActionMailer::Base
#   default :from => "Dev Env <kyle.on.ruby@gmail.com>"
# 
#   def enquiry_email(private_group_tour)
#     @private_group_tour = private_group_tour
#     mail(:to => [ "kyle.ries@gmail.com", @private_group_tour.email ],
#          :subject => "Private Group Tour Enquiry")
#   end
# end

class ContactFormMailer < ActionMailer::Base
  default :from => "Goldenseal Wellness <admin@goldensealwellness.com>"

  def contact_email(contact_form)
    @contact_form = contact_form
    mail(:to => [ "admin@goldensealwellness.com", @contact_form.email ],
         :subject => "Goldenseal Wellness Contact Form")
  end
end