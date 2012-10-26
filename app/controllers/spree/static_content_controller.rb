class Spree::StaticContentController < Spree::BaseController
  caches_action :show, :cache_path => Proc.new { |controller|
    "spree_static_content/" + controller.params[:path].to_s + "_spree_static_content"
  }
  
  layout :determine_layout
  
  def show
    @intake_info = IntakeInfo.new
    @contact_form = ContactForm.new
    path = case params[:path]
    when Array
      '/' + params[:path].join("/")
    when String
      '/' + params[:path]
    when nil
      request.path
    end
    path = path.gsub('//','/')
    path = StaticPage::remove_spree_mount_point(path) unless Rails.application.routes.named_routes[:spree].path == "/"
    
    unless @page = Spree::Page.visible.find_by_slug(path)
      render_404
    end
  end
  
  def create
    @intake_info = IntakeInfo.new(params[:intake_info])
    if verify_recaptcha(:private_key => "6LeDndcSAAAAAOayCRACYBZ9y7pe0pOXFgI1C1lT") 
      if @intake_info.save
        IntakeInfoMailer.intake_email(@intake_info).deliver
        flash[:success] = "Thanks for your message!"
        redirect_to root_path
      else
        redirect_to :back
        flash[:alert] = "Oops! Your message was not sent. Please call us at (919) 354-0840 ext 201"
      end
    else
      redirect_to :back
      flash[:alert] = "Oops! Looks like the Captcha was entered incorrectly. Please try again."
    end
  end
  
  def contact_form
    @contact_form = ContactForm.new(params[:contact_form])
    if verify_recaptcha(:private_key => "6LeDndcSAAAAAOayCRACYBZ9y7pe0pOXFgI1C1lT") 
      if @contact_form.save
        ContactFormMailer.contact_email(@contact_form).deliver
        flash[:success] = "Thanks for your message!"
        redirect_to root_path
      else
        redirect_to :back
        flash[:alert] = "Oops! Your message was not sent. Please call us at (919) 354-0840 ext 201"
      end
    else
      redirect_to :back
      flash[:alert] = "Oops! Looks like the Captcha was entered incorrectly. Please try again."
    end
    
  end

  private
  
  def determine_layout
    return @page.layout if @page and @page.layout.present?
    'spree/layouts/spree_application'
  end

  def accurate_title
    @page ? (@page.meta_title.present? ? @page.meta_title : @page.title) : nil
  end
end
