class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def destroy
   @user = User.find(params[:id])
   @user.destroy

   if @user.destroy
       redirect_to root_url, notice: "User deleted."
   end
 end

 def to_admin
      @user = User.find(params[:id])
      if @user.update_attribute :admin, true
          redirect_to root_url, notice: "User set as admin."
 end
 def to_admin
      @user = User.find(params[:id])
      if @user.update_attribute :admin, false
          redirect_to root_url, notice: "Admin set as user."
 end
end

end
end
