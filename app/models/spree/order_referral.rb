class Spree::OrderReferral < ActiveRecord::Base
  belongs_to :referral
  belongs_to :order
end
