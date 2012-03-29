Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_cart_to_product_top",
                     :insert_after => "h1.product-title",
                     :partial => "store/cart-form-div",
                     :disabled => false)
