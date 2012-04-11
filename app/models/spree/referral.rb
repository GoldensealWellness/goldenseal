class Spree::Referral < ActiveRecord::Base
  #has_many :order_referrals
  has_many :orders
  
  validates_presence_of :name
  
  def num_orders
    orders.count
  end
  
end
