class CreateBlurbs < ActiveRecord::Migration
  def change
    create_table :spree_blurbs do |t|
      t.string :name
      t.text :body
      t.integer :product_id

      t.timestamps
    end
  end
end
