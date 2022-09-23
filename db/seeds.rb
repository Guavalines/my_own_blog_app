# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'joel@example.com',
            password: 'password',
            password_confirmation: 'password',
            name: 'Joel',
            role: User.roles[:admin])
User.create(email: 'john@doe.com',
            password: 'password',
            password_confirmation: 'password',
            name: 'John Doe')


100.times do |x|
  puts "Creating post #{x}"
  post = Post.create(title: "Title #{x}",
                     body: "Body #{x} Words go here Idk",
                     user_id: User.first.id)

  2.times do |y|
    puts "Creating comment #{y} for post #{x}"
    post.comments.create(body: "Comment #{y}",
                   user_id: User.second.id)
  end
end
