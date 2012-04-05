class Spree::ProductAllowedRole < ActiveRecord::Base
  belongs_to :product
  belongs_to :role
end
