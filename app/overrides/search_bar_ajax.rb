 Deface::Override.new(:virtual_path => "spree/shared/_search", 
                      :name => "search_bar_ajax", 
                      :replace => "code[erb-loud]:contains('search_field_tag :keywords, params[:keywords], :placeholder => t(:search)')", 
                      :disabled => false,
                      :text => "<%= search_field_tag :keywords, params[:keywords], :placeholder => t(:search), data: {autocomplete_source: search_path} %>")
                     
