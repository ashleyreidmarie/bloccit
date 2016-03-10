require 'random_data'

#Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
    )
end
posts = Post.all

#Create Comments

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end

unique_post = Post.find_or_create_by(
  title: "Unique Title",
  body:  "Unique Body"
  )
Comment.find_or_create_by(
  post: unique_post,
  body: "Unique Body"
  )

#Create Advertisements
10.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph,
    price: RandomData.random_number
    )
end

10.times do
  Question.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph,
    resolved: false
    )
end
    
puts "Seed finished"
puts "#{Post.count} posts create"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions create"
puts "#{Advertisement.count} advertisements created"