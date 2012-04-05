class CreateProductAllowedRoles < ActiveRecord::Migration
  def up
    create_table :spree_product_allowed_roles, :id => false, :force => true do |t|
      t.integer :product_id 
      t.integer :role_id
      
      t.timestamps
    end
    
    add_index :spree_product_allowed_roles,[:product_id,:role_id]
  end

  def down
  end
end
