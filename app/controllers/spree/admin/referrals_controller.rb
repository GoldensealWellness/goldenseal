class Spree::Admin::ReferralsController < Spree::Admin::ResourceController
  def index
  end
  
  def show
  end
  
  private
    
    def collection
      params[:search] ||= {}
      params[:search][:meta_sort] ||= "created_at.desc"
      @search = Spree::Referral.metasearch(params[:search])
      @collection = @search.page(params[:page]).per(Spree::Config[:orders_per_page])
    end
end
