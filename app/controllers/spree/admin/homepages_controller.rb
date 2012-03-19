class Spree::Admin::HomepagesController < Spree::Admin::ResourceController
  
  def show
    homepage
  end

  def edit
    homepage
  end
  
  def update
    homepage
    if @homepage.update_attributes(params[:homepage])
			flash[:success] = "Homepage Updated"
			redirect_to admin_homepage_path
		else if @homepage.create(params[:homepage])
		  flash[:success] = "Homepage Created"
			redirect_to admin_homepage_path
			  else
			    render 'edit'
		    end
		end
  end

private
    def homepage
      @homepage = Spree::Homepage.first ? Spree::Homepage.first : Spree::Homepage.create
    end
end
