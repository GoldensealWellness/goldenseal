class AddReferralIdToOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :referral_id, :integer
  end
end
