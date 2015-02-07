class SessionController < ApplicationController
  def new
        render :new
    end

    def create
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password]) && user.admin_status == true
            session[:user_id] = user.id
            #needs to redirect to the create new post page
            redirect_to '/admin'
        elsif user && user.authenticate(params[:password]) && user.admin_status == false
            session[:user_id] = user.id
            redirect_to '/'
        else 
            @error = true
            render :new
        end
    end

  def destroy
      reset_session
      redirect_to '/'
  end

end