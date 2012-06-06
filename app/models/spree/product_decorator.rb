Spree::Product.class_eval do
  has_many :blurbs, :class_name => "Spree::Blurb"
  has_many :product_allowed_roles, :class_name => "Spree::ProductAllowedRole"
  has_many :roles, :class_name => "Spree::Role", :through => :product_allowed_roles
  
  def all_roles?
    roles.count == Spree::Role.count
  end
  
  private 
  
  def my_taxon_names
    debugger
    taxons.map{|x| x.name if x.root.name == "Categories"}.compact!
  end
end
