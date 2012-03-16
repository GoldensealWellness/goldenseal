Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'change_product_right_class',
                    :set_attributes => "div.ten",
                    :attributes => {:class => 'columns nine omega'})
