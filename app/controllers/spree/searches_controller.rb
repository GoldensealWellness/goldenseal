class Spree::SearchesController < Spree::BaseController
  def show
    @products = Spree::Product.active.order(:name).like_any([:name], [params[:term]])
    @products = @products.in_taxon(Spree::Taxon.find(params[:taxon_id])) unless params[:taxon_id] == ""
    @products.uniq!
    respond_to do |format|
      format.json { render json: @products.map(&:name) }
    end
  end
end 
