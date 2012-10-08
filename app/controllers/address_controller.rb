module Spree
  class AddressController < BaseController
   def destroy
     @order.bill_address.destroy
     redirect_to :back
   end 
  end
end