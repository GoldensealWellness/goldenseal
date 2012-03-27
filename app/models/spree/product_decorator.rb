Spree::Product.class_eval do
  has_many :blurbs, :class_name => "Spree::Blurb"
end
