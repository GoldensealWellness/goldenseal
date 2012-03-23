 Deface::Override.new(:virtual_path => "spree/products/show", 
                      :name => "remove_cart_form_from_product", 
                      :remove => "[data-hook = 'cart_form']",
                      :original => "<div id='cart-form' data-hook='cart_form'>
                                     <%= render :partial => 'cart_form' %>
                                     </div>")
