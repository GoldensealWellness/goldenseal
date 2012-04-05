Deface::Override.new(:virtual_path => "spree/admin/users/index",
                      :name => "add_subnav_to_users",
                      :insert_before => "div.toolbar",
                      :partial => "spree/admin/shared/user_sub_menu")
