Deface::Override.new(:virtual_path => "spree/admin/users/new",
                      :name => "add_subnav_to_user_new",
                      :insert_before => "[data-hook='admin_user_new_form_header']",
                      :partial => "spree/admin/shared/user_sub_menu")
