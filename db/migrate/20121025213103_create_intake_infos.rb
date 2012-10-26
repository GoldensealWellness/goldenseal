class CreateIntakeInfos < ActiveRecord::Migration
  def change
    create_table :intake_infos do |t|
      t.string :client_first_name
      t.string :client_last_name
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :email
      t.string :telephone
      t.string :reason
      t.datetime :dob
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :insurance
      t.string :location
      t.string :best_time
      t.string :referral
      t.string :type_of_service

      t.timestamps
    end
  end
end
