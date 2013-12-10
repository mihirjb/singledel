class RegistrationsController < ApplicationController
  def new
      @user = User.new
      @order = @user.orders.build
    end

    def create
     @user = User.create(user_params)
      if @user.save
         @order = @user.orders.create(order_params)
        
        redirect_to root_path, :notice => "Signed up successfully"
        
      else
        render action: 'new' , :notice => "Sign up failed"
      end

    end

    private 

    def user_params
    params.require(:user).permit(:email, :password,:address, :phone)
    end
    def order_params
      params.require(:order).permit(:gathiya, :qty, :user_id)
    end
  
end
