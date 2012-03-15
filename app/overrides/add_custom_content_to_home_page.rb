Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "add_custom_content_to_home_page.rb",
                     :insert_before => "[data-hook='homepage_products']",
                     :partial => "store/home-content")
