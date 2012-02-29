Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                      :name => 'add_wrapper_to_header_elements',
                      :surround_contents => 'header',
                      :text => "<div id='headwrap'> <%= render_original %> </div>")
