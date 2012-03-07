Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
                     :name => "add_cart_to_top_nav",
                     :insert_after => "li#search-bar",
                     :text => "<li id='link-to-cart' data-hook><%= link_to_cart %></li>",
                     :disabled => false)
