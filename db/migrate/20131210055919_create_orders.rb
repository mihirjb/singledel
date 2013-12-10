class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :type
      t.string :qty
      t.string :paymentmode
      t.integer :user_id

      t.timestamps
    end
  end
end
