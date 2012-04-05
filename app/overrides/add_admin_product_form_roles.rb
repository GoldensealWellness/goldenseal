Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                      :name => "add_admin_product_form_roles",
                      :sequence => 101,
                      :insert_after => "[data-hook='admin_product_form_right'], #admin_product_form_right[data-hook]",
                      :partial => "spree/admin/products/allowed_roles_fields")
