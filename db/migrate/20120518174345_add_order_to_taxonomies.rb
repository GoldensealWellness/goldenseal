class AddOrderToTaxonomies < ActiveRecord::Migration
  def change
    add_column :spree_taxonomies, :order, :integer, :nil => false, :default => 100
    add_column :spree_taxonomies, :shop_by, :boolean, :nil => false, :default => true
  end
end
