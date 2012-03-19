class AddDefaultToBodyColumn < ActiveRecord::Migration
  def up
    change_column(:spree_homepages, :body, :text, :null => false, :default => "")
  end
end
