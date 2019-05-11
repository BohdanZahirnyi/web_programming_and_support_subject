class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def destroy
   @user = User.find(params[:id])
   @user.destroy

   if @user.destroy
       redirect_to root_url, notice: "Користувача #{@user.email} видалено"
   end
 end

 def to_admin
      @user = User.find(params[:id])
      if @user.update_attribute :admin, true
          redirect_to root_url, notice: "Користувач #{@user.email} - тепер адмін"
 end
 end
 def to_user
      @user = User.find(params[:id])
      if @user.update_attribute :admin, false
          redirect_to root_url, notice: "Адмін #{@user.email} тепер користувач"

end

end
end
