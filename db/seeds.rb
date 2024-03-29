# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.where(email: "user1@gmail.com").first_or_initialize
user.update!(password: "pass123", password_confirmation: "pass123")

100.times do |i|
  blog_posts = BlogPost.where(title: "Title of Blog Post number #{i+1}").first_or_initialize
  blog_posts.update(content: "Content for Blog number #{i+1}", published_at: Time.current)
end