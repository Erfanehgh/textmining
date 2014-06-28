class UploadController < ApplicationController
  def index
    render :file => 'app/views/static_pages/upload.html.erb'
  end
  def uploadFile
    post = DataFile.Save(upload)
    render :text => "File has been uploaded successfully"
  end
end

