class StaticPagesController < ApplicationController

#  def index
 #    render :file => 'app\views\static_pages\upload.html.erb'
 # end

  def upload   

#    post = DataFile.save(params[:upload])
 #   render :text => "File has been uploaded successfully"
  end

def uploaded

#upload = params[:file]

#post = DataFile.save(params[:file])
 #   render :text => "File has been uploaded successfully"

require './pdftotext.rb'
textfile=Pdf2text.new

#uploaded_file =params[:file].original_filename
tf=textfile.pdf_to_text(params[:file].original_filename)
@file_content =tf.join(" ")

#uploaded_file1 = params[:file1].original_filename
tf2=textfile.pdf_to_text(params[:file1].original_filename)
@file_content1 =tf2.join(" ")

#puts "file_content"

end

  def index
  end

  def help
  end

  def about
  end

  def contact
  end

  def score
        require './textmining.rb'
	@first = User.last.firstarticle
   	@second=User.last.secondarticle
	text=Textsimilarity.new
	@score=text.calculateSimilarity(@first,@second)
#	render :score
  end

def inputtext
	@user=User.new		
end

#def new
	
#end
end
