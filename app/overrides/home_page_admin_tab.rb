Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "home_page_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:homepage) %>")
