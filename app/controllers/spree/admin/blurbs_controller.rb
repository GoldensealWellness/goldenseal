class Spree::Admin::BlurbsController < Spree::Admin::ResourceController
  before_filter :find_product
  #before_filter :find_edit_product, :only => [:edit, :update, :index]
  create.before :add_id
  
  def destroy
    @object.destroy
    redirect_to location_after_save
  end
    
  private
    def find_product
      @product = @object ? Spree::Product.find_by_id(@object.product_id) : Spree::Product.find_by_permalink(params[:product_id])
    end
  
    def location_after_save
      admin_product_blurbs_url(find_product)
    end
    
    def add_id
      @product = Spree::Product.find_by_permalink(params[:product_id])
      @object[:product_id] = @product.id
    end
end
