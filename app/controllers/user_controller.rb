class UserController < ApplicationController

 def show
   @user = User.find_by(id: session[:user_id])

   if @user && @user.admin_status == true
       render :show
   else
       redirect_to '/login'
   end

 end


end