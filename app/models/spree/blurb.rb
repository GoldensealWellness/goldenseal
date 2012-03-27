class Spree::Blurb < ActiveRecord::Base
  belongs_to :product, :class_name => "Spree::Product"
  
  validates_presence_of :name
  validates_presence_of :body
end
