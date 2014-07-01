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

uploaded_file = params[:file]
@file_content = uploaded_file.read

uploaded_file1 = params[:file1]
@file_content1 = uploaded_file1.read

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
