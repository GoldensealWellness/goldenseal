Spree::CheckoutController.class_eval do
  before_filter :save_referral, :only => :update
  
  def save_referral
    if params[:order]
      if params[:order][:referral] && params[:order][:referral] == "0" && Spree::Referral.find_by_name(params[:other]).nil?
        Spree::Referral.create(:name => params[:other])
      else if params[:order][:referral] 
        @order.update_attributes(:referral_id => params[:order][:referral])
        end
      end
    end
  end
  
  def destroy
    @order.bill_address.destroy
    respond_with(@order, :location => checkout_state_path(@order.state))
  end
end