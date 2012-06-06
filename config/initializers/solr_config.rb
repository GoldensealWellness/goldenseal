PRODUCT_SOLR_FIELDS = [:name, :description, :is_active, {:price => :float}, 
                       :taxon_ids, :price_range, :my_taxon_names, :store_ids,
                       :brand_property, :color_option, :size_option]

PRODUCT_SOLR_FACETS = [:price_range, :my_taxon_names,
                       :brand_property]
