Deface::Override.new(:virtual_path => "spree/admin/products/new",
                      :name => "add_admin_new_product_form_roles",
                      :insert_bottom => "[data-hook='new_product_attrs']",
                      :partial => "spree/admin/products/allowed_roles_fields_new")
