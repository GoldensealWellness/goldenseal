Deface::Override.new(:virtual_path => "spree/admin/users/edit",
                      :name => "add_subnav_to_user_edit",
                      :insert_before => "[data-hook='admin_user_edit_form_header']",
                      :partial => "spree/admin/shared/user_sub_menu")
