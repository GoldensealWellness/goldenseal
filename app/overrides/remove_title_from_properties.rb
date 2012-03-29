Deface::Override.new(:virtual_path => 'spree/products/_properties',
                     :name => "remove_title_from_properties",
                     :remove => "h6",
                     :original => " <h6 class='product-section-title'><%= t('properties')%></h6>")
