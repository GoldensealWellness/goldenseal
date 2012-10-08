Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_nav_to_indiv_prod_pages",
                     :replace => "h1.product-title",
                     :partial => "spree/products/nav")