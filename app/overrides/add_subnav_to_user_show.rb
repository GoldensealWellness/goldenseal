Deface::Override.new(:virtual_path => "spree/admin/users/show",
                      :name => "add_subnav_to_user_show",
                      :insert_before => "h1",
                      :partial => "spree/admin/shared/user_sub_menu")
