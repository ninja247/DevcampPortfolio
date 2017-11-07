User.create!(
    email: "user@gmail.com",
    name: "user",
    password: "qwerty",
    password_confirmation: "qwerty",
    roles: "site_admin"
  )

puts "1 Admin user created"

User.create!(
    email: "guestuser@gmail.com",
    name: "guest user",
    password: "qwerty",
    password_confirmation: "qwerty",
  )

puts "1 guest user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

10.times do |blog|
Blog.create!(
  title: "my blog post #{blog}",
  body:"If you notice, I'm not putting all my code on the same line here in the block like.",
  topic_id: Topic.last.id 
)
end

5.times do |skill|
  Skill.create!(
title: "Rails #{skill}",
percent_utilized: 15
    )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title: #{portfolio_item}",
    subtitle: "Ruby on rails",
    body: "Keep in mind, the block parameter here |blog| is just a variable, and it can b.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Keep in mind, the block angular  here |blog| is just a variable, and it can be.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
    )
end

3.times do |technology|
  Technology.create!(
    name: "Technology #{technology}",
    portfolio_id: Portfolio.last.id
 )
end


puts "9 portfolio items created"