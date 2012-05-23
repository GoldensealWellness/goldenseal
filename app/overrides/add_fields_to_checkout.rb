Deface::Override.new(:virtual_path => "spree/checkout/_address",
                      :name => "add_referral_to_checkout",
                      :insert_before => "[data-hook='buttons']",
                      :partial => "store/referral")
          
Deface::Override.new(:virtual_path => "spree/checkout/_address",
                      :name => "add_coupons_to_checkout_address",
                      :insert_before => "[data-hook='buttons']",
                      :partial => "spree/checkout/coupon_code_field")
           
Deface::Override.new(:virtual_path => "spree/checkout/_payment",
                      :name => "remove_coupons_from_checkout_payment",
                      :remove => "[data-hook='coupon_code_field']")
                      
Deface::Override.new(:virtual_path => "spree/checkout/_payment",
                      :name => "change_payment_button",
                      :replace => "[data-hook ='buttons']",
                      :text => "<div class='form-buttons' data-hook='buttons'>
          <%= submit_tag 'Submit Payment', :class => 'continue button primary' %>
          <script>disableSaveOnClick();</script>
          </div>")
