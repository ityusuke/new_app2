

30.times do |n|
  Faker::Config.locale = :ja
  @username  = Faker::Name.name  
  @email = "ed#{n+1}adaaw-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(username:  @username,
               email: @email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(16)
  Faker::Config.locale = :en
tour=Tour.new
10.times do
  @tourname  =   Faker::Lorem.sentence
  @tourcontent = Faker::Lorem.sentence
  users.each { |user| user.tours.create!(tourname: @tourname,
                                        tourcontent: @tourcontent) }
end



