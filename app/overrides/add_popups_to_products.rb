Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_popups_to_products",
                     :insert_bottom => "div#product-description",
                     :partial => "store/popup-div",
                     :disabled => false)
