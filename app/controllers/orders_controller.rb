class OrdersController < ApplicationController
  def index
    @orders = Order.find_all_by_user_id(current_user.id)
  end

  def new
    @order = Order.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
