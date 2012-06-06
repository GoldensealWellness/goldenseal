Spree::ProductsController.class_eval do
     def index
      @searcher = Spree::Config.searcher_class.new(params)
      @products = @searcher.retrieve_products
      respond_with(@products)
    end
end
