# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  type        :string(255)
#  qty         :string(255)
#  paymentmode :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Order < ActiveRecord::Base
  belongs_to :user
end
