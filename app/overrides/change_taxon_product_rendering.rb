Deface::Override.new(:virtual_path => "spree/taxons/show",
                      :name => "change_taxon_product_rendering",
                      :replace => "code[erb-silent]:contains(' if @taxon.children.empty? || !params[:keywords].blank?')",
                      :closing_selector => "code[erb-silent]:contains('end')",
                      :partial => "store/taxon")
