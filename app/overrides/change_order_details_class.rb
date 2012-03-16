Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'change_order_details_class',
                    :set_attributes => "[data-hook='order_details']",
                    :attributes => {:class => 'index columns alpha omega fifteen'})
