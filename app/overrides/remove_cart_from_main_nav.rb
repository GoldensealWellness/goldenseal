 Deface::Override.new(:virtual_path => "spree/shared/_store_menu", 
                      :name => "remove_cart_from_main_nav", 
                      :remove => "li#link-to-cart",
                      :original => "<li id='link-to-cart' data-hook><%= link_to_cart %></li>")
