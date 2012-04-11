class CreateReferrals < ActiveRecord::Migration
  def up
    create_table :spree_referrals do |t|
      t.string :name
      t.boolean :shown

      t.timestamps
    end
  end

  def down
    drop_table :spree_refferals
  end
end
