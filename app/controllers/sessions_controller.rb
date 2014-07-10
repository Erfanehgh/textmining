class SessionsController < ApplicationController
def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
#render  'show'
      # Sign the user in and redirect to the user's show page.
    else
      flash.now[:error] = 'Invalid email/password combination'
      redirect_to '/signin'
    end
  end

  def destroy
sign_out
    redirect_to root_url
  end


end
