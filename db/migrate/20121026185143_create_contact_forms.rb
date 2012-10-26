class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :location
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :telephone
      t.string :attention
      t.string :message

      t.timestamps
    end
  end
end
