# coding: utf-8

User.create!(name: "管理者",
             email: "sample@email.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

10.times do |n|
  name  = "テストユーザー#{n+1}"
  email = "sample-#{n+1}@email.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
puts "Completed! sample user"

100.times do |n|
  customer_id = "018#{rand(88800000..88999999)}-00"
  name = Faker::Name.name
  zip = Faker::Address.postcode
  phone_number = "0188#{rand(10..99)}#{rand(1111..9999)}"
  mobile_number = "090#{rand(1111..9999)}#{rand(1111..9999)}"
  address = "秋田市" + Faker::Address.city + Faker::Address.street_name
  Customer.create!(customer_id: customer_id,
                   name: name,
                   zip: zip,
                   phone_number: phone_number,
                   mobile_number: mobile_number,
                   address: address)
end
puts "Completed! sample customer"
