class Customer < ActiveRecord::Base
  attr_accessible :name, :price
  has_many :orders
end
