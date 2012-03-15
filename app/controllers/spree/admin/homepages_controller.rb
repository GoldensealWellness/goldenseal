class Spree::Admin::HomepagesController < Spree::Admin::ResourceController
  
  def show
    @homepage = Spree::Homepage.first
  end

  def edit
    @homepage = Spree::Homepage.first
  end
  
  def update
    @homepage = Spree::Homepage.first
    if @homepage.update_attributes(params[:homepage])
			flash[:success] = "Homepage Updated"
			redirect_to admin_homepage_path
		else
			render 'edit'
		end
  end
end
