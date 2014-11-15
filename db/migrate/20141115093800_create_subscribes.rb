class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :preference
      t.string :zip
      t.string :email
      t.string :phone
      t.string :lunch_day
      t.string :lunch_time
      t.string :dinner_day
      t.string :dinner_time
      t.string :extra_note
      t.string :first_name
      t.string :street_address
      t.string :apt
      t.string :city
      t.string :newyork
      t.string :zip
      t.string :phone_delivery
      t.string :email_delivery
      t.string :paypal
      t.string :foodgembox_price
      t.string :tax_price
      t.string :tip_price
      t.string :total_price
      t.string :coupun_code

      t.timestamps
    end
  end
end
