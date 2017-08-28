class UsersController < ApplicationController

   def index
    @user = current_user   
    @users = User.all
    
   end
   
   def show
    
     @user = User.find(params[:id])
     @roles = ['teacher','student']
    
   end
   
   def update
       
        user = User.find_by(email: params[:user][:email]).first
        
       
            
            user.update(params[:user].permit(:user, :role))
            
            redirect_to users_path
       
   end
   
end