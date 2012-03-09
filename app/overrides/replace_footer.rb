 Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                      :name => "replace_footer", 
                      :replace => "footer", 
                      :partial => "store/footer")
