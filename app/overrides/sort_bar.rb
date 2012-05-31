Deface::Override.new(:virtual_path => "spree/products/index",
                      :name => "show_search_partials_sort_bar",
                      :insert_top => "[data-hook='search_results']",
                      :partial => "spree/products/sort_bar",
                      :disabled => false)
