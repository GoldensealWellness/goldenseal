Spree::HomeController.class_eval do
  def index
    @taxon = Spree::Taxon.find_by_name("Featured")
    return unless @taxon

    @searcher = Spree::Config.searcher_class.new(params.merge(:taxon => @taxon.id))
    @products = @searcher.retrieve_products
    @homepage = Spree::Homepage.first
    @taxon = nil
    respond_with(@products)
  end
end
