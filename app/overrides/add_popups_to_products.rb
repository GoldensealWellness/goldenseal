Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_popups_to_products",
                     :insert_bottom => "[data-hook='product_right_part_wrap']",
                     :partial => "store/popup-div",
                     :disabled => false)
