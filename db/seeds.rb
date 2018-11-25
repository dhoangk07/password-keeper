Password.all.delete_all
Knowledge.all.delete_all
20.times do |n|
  app = Faker::Name.name           
  password = Faker::Internet.password(8)
  Password.create!(app: app, pass: password, user_id: 1)
end

100.times do |n|
  content = Faker::Lorem.paragraph(25)
  title = Faker::Lorem.sentence(3)
  Knowledge.create!(content: content, title: title, user_id: 1)
end


