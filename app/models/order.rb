class Order < ActiveRecord::Base
  attr_accessible :cost, :order_no
  belongs_to :customer
end
