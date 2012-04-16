#Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
#                     :name => "remove_main_nav_from_header",
#                     :remove => "code[erb-silent]:contains('if store_menu?')",
#                     :closing_selector => "code[erb-silent]:contains('end')")

Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => "remove_grid",
                     :replace => "nav.sixteen",
                     :text => "<nav id = 'main-nav-wrap'>
                                <ul id='main-nav-bar' class='inline' data-hook>            
                                  <%= render :partial => 'spree/shared/store_menu' %>
                               </ul>
                               </nav>")
