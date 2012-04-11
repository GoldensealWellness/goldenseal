class CreateOrderReferrals < ActiveRecord::Migration
  def up
    create_table :spree_order_referrals, :id => false do |t|
      t.integer :referral_id
      t.boolean :order_id

      t.timestamps
    end
  end

  def down
    drop_table :spree_order_referrals
  end
end
