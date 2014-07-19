class SessionsController < ApplicationController
def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
	sign_in user
	redirect_to  show_path
      # Sign the user in and redirect to the user's show page.
 

   else

      flash[:error] = 'Invalid email/password combination'
      redirect_to signin_path
    end
  end

  def destroy
sign_out
    redirect_to root_url
  end


private
    def user_params
      params.require(:user).permit(:name, :email, :password,
     :password_confirmation, :firstarticle ,:secondarticle)
    end


end
