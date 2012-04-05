class AddProductAllowedRoleIdToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :product_allowed_role_id, :integer
    add_index :spree_products, :product_allowed_role_id
  end
end
