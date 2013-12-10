class AddGathiyaToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :gathiya, :string
  end
end
