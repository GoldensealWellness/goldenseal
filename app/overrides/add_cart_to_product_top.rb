Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_cart_to_product_top",
                     :insert_top => "[data-hook='product_right_part_wrap']",
                     :partial => "store/cart-form-div",
                     :disabled => false)
