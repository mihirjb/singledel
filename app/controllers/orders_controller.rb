class OrdersController < ApplicationController
  def index
    @orders = Order.find_all_by_user_id(current_user.id)
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    if @order.save
      redirect_to root_path, :notice => "Order placed successfully"
    else
      redirect_to root_path, :notice =>"Placing of your Order failed. please Try Again"
    end 
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def show
    @order = Order.find(params[:id])
    
  end
  
   def order_params
      params.require(:order).permit(:gathiya, :qty, :user_id)
    end
end
