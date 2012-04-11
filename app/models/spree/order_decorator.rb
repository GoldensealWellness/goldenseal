Spree::Order.class_eval do
  attr_accessible :referral_id
  belongs_to :referral
end
