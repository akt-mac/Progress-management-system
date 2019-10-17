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

20.times do |n|
  name = Faker::Name.name
  phone_number = "018-8#{rand(10..99)}-#{rand(1111..9999)}"
  cell_phone_number = "090-#{rand(1111..9999)}-#{rand(1111..9999)}"
  address = "秋田市" + Faker::Address.city + Faker::Address.street_name
  Stove.create!(name: name,
                phone_number: phone_number,
                cell_phone_number: cell_phone_number,
                address: address)
end
puts "Completed! sample customer"