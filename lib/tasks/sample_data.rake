namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin",
                         email: "admin@insigniadevs.com",
                         password: "adminx",
                         password_confirmation: "adminx")
    admin.toggle!(:admin)
    User.create!(name: "Example User",
                 email: "example@insigniadevs.com",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@insigniadevs.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end