json.array!(@subscribes) do |subscribe|
  json.extract! subscribe, :id, :preference, :zip, :email, :phone, :lunch_day, :lunch_time, :dinner_day, :dinner_time, :extra_note, :first_name, :street_address, :apt, :city, :newyork, :zip, :phone_delivery, :email_delivery, :paypal, :foodgembox_price, :tax_price, :tip_price, :total_price, :coupun_code
  json.url subscribe_url(subscribe, format: :json)
end
