Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :name => "add_admin_blurb_tab",
                     :insert_bottom => "[data-hook='admin_product_tabs']",
                     :text => "<li>
                     <%= link_to 'Blurbs', admin_product_blurbs_url(@product) %>
                               </li>",
                     :disabled => false)