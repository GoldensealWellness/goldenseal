class Spree::SearchesController < Spree::BaseController
  def show
    @products = Spree::Product.order(:name).where("name like ?", "%#{params[:term]}%")
    render json: @products.map(&:name)
  end
end
