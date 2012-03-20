class Spree::Admin::FilesController < Spree::Admin::ResourceController
  def upload
    if params[:file]
      uploaded_io = params[:file]
      File.open("/data/spree/shared/assets/uploads/#{uploaded_io.original_filename}", 'wb') do |file|
        file.write(uploaded_io.read)
      end
      redirect_to admin_homepage_path
    else
      flash[:notice] = "Must Specify file to upload"
      redirect_to admin_homepage_path
    end
  end
end
