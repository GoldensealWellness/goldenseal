Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "add_title_to_featured.rb",
                     :insert_top => "[data-hook='homepage_products']",
                     :text => "<h2>Featured Products</h2>")
