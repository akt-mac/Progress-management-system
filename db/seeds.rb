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
  signup_at = Date.today
  customer_name = Faker::Name.name
  summary_1 = 1
  summary_2 = rand(0..1)
  address = "秋田市" + Faker::Address.city + Faker::Address.street_name
  phone_number = "0188#{rand(10..99)}#{rand(1111..9999)}"
  mobile_number = "090#{rand(1111..9999)}#{rand(1111..9999)}"
  note =  Faker::Lorem.sentence
  progress = 0
  reminder = 0
  
  Stove.create!(signup_at: signup_at,
                   customer_name: customer_name,
                   summary_1: summary_1,
                   summary_2: summary_2,
                   address: address,
                   phone_number: phone_number,
                   mobile_number: mobile_number,
                   note: note,
                   progress: progress,
                   reminder: reminder)
end
puts "Completed! sample stove"
