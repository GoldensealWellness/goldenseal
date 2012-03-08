Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => "remove_main_nav_from_header",
                     :remove => "code[erb-silent]:contains('if store_menu?')",
                     :closing_selector => "code[erb-silent]:contains('end')")
