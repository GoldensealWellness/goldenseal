Deface::Override.new(:virtual_path => "spree/checkout/_address",
                      :name => "add_referral_to_checkout",
                      :insert_before => "[data-hook='buttons']",
                      :partial => "store/referral")
