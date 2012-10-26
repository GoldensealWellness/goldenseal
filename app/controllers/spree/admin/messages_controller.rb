class Spree::Admin::MessagesController < Spree::Admin::ResourceController

  def index
    @intakes = IntakeInfo.find_all
  end
  
  def show
    @search = IntakeInfo.search(params[:search])
    @intakes = @search.relation.page(params[:page]).per(Spree::Config[:admin_products_per_page])
    @search1 = ContactForm.search(params[:search])
    @contacts = @search1.relation.page(params[:page]).per(Spree::Config[:admin_products_per_page])
  end

  def edit
    
  end
  
private
    def homepage
      @homepage = Spree::Homepage.first ? Spree::Homepage.first : Spree::Homepage.create
    end
end
