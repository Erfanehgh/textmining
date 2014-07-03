class StaticPagesController < ApplicationController

require 'pdf/reader'
require 'rubygems'
#  def index
 #    render :file => 'app\views\static_pages\upload.html.erb'
 # end

  def upload   

#    post = DataFile.save(params[:upload])
 #   render :text => "File has been uploaded successfully"
  end

def uploaded

#require 'rubygems'
#require 'pdf-reader'

uploaded_file =params[:file].original_filename
reader = PDF::Reader.new(uploaded_file)
str=""
reader.pages.each do |page|
str=str+" "+page.text
end
tf=str.gsub! "\n", " "
@file_content =tf


uploaded_file1 =params[:file1].original_filename
reader = PDF::Reader.new(uploaded_file1)
str1=""
reader.pages.each do |page|
str1=str1+" "+page.text
end
tf2=str1.gsub! "\n", " "
@file_content1 =tf2  

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
