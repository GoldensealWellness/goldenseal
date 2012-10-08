module Spree
  class AddressController < BaseController
   def destroy
     @order.bill_address.destroy
   end 
  end
end