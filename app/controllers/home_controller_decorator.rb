Spree::HomeController.class_eval do
  def index
    @taxon = Taxon.find_by_name!("Featured")
    return unless @taxon

    @searcher = Spree::Config.searcher_class.new(params.merge(:taxon => @taxon.id))
    @products = @searcher.retrieve_products

    respond_with(@products)
  end
end
