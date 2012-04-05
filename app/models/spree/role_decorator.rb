Spree::Role.class_eval do
  has_many :product_allowed_roles
  has_many :products, :through => :product_allowed_roles  
end
