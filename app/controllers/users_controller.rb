class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
#	 render "./static_pages/score.html.erb"
#	require './textmining.rb'
 #       @first = User.last.firstarticle
  #      @second=User.last.secondarticle
   #     text=Textsimilarity.new
    #    @score=text.calculateSimilarity(@first,@second)

#    render  "./static_pages/score.html.erb"
 end

  # GET /users/1
  # GET /users/1.json
  def show	
	@user = User.find_by(email: params[:email])
 # @user = User.find(params[:email])

	current_user=@user
 end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
   
@user = User.new(user_params)

if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Plagiarism Detector!"
      redirect_to @user
    else
      render 'new'
    end
#@user.save
#render 'show'


#redirect_to "/score"
   # render action: "./static_pages/score.html.erb"
# respond_to do |format|
#	format.html {redirect_to "/score"}  
#end
#redirect_to "/inputtext"

  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
    :password_confirmation, :firstarticle ,:secondarticle)
    end

#  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
 #   def user_params
  #    params.require(:user).permit(:name, :email, :firstarticle, 
#			:secondarticle)
 #   end
end
