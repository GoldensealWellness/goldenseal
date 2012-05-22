class MySearch < Spree::Core::Search::Base
  
  def retrieve_products
    base_scope = get_base_scope
    @products_scope = @product_group.apply_on(base_scope)
    
    curr_page = manage_pagination && keywords ? 1 : page

    @products = @products_scope.includes([:images, :master])
    
    @products.sort! {|a,b| a.name.downcase <=> b.name.downcase}
    
    if keywords
      @products.like_any([:name], [keywords]).each  do |product|
        @products.unshift(product)
      end
    end
    
    @products.uniq!
    return Kaminari.paginate_array(@products).page(curr_page).per(per_page)
  end    
#  protected
#    def get_products_conditions_for(base_scope, query)
#      base_scope.sort! {|a,b| a.name.downcase <=> b.name.downcase}
#      base_scope = base_scope.like_any([:name, :description], query.split)
#        
#      base_scope.like_any([:name], [query]).each do |product|
#        base_scope.unshift(product)
#      end
#      debugger 
#      base_scope.uniq!
#      return base_scope
#    end
end
