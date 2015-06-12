class SessionsController < ApplicationController
	def create
		# render text: request.env['omniauth.auth'].to_json
		begin
	    @user = User.from_omniauth(request.env['omniauth.auth'])
	    if @user.profile == nil
	    	@profile = Profile.from_omniauth(request.env['omniauth.auth'])
	    	@user.profile = @profile
	    end
	    session[:user_id] = @user.id
	    flash[:success] = "Welcome, #{@user.nickname}!"
	  rescue
	    flash[:warning] = "There was an error while trying to authenticate you..."
	  end
  	if @user.profile.bio == nil	
  		redirect_to edit_profile_path(@user.profile)
  	else
  		redirect_to :back
		end
	end

	def destroy
		if current_user
			session.delete(:user_id)
			flash[:success] = 'See you!'
		end
		redirect_to root_path
	end

	def auth_failure
		redirect_to :back
	end
end