class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :spree_homepage do |t|
      t.text :body

      t.timestamps
    end
  end
end
