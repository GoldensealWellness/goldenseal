Deface::Override.new(:virtual_path => "spree/taxons/show",
                      :name => "change_taxon_sidebar_nav",
                      :replace => "code[erb-loud]:contains(\"render :partial => 'spree/shared/taxonomies'\")",
                      :text => "<%= render :partial => 'store/taxon_sidebar', :locals => { :taxon => @taxon }")
