class SessionsController < ApplicationController
  def new
  end
  def create
	  user = User.find_by(email: params[:session][:email].downcase)
	  if (user.first_name == params[:session][:first_name] && user != nil)
			log_in user
			redirect_to user
	  else
		  flash.now[:alert] = "Invalid email/password combination"
		  puts "Faux"
		  render 'new'
      end
  end

  def destroy
    log_out
    redirect_to login_url
  end
end
