class AddProductAllowedRoleIdToRoles < ActiveRecord::Migration
  def change
    add_column :spree_roles, :product_allowed_role_id, :integer
    add_index :spree_roles, :product_allowed_role_id
  end
end
