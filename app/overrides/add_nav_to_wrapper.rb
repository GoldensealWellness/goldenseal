Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "add_nav_to_wrapper",
                     :insert_top => "div#wrapper",
                     :partial => "store/nav-bar",
                     :disabled => false)
