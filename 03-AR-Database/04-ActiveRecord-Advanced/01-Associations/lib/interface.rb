require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

User.where(name: 'jojo', email: 'jo@jo.com').first_or_create
p User.last

def ask(prompt)
  print "#{prompt} "
  gets.to_s.chomp
end

def create_post(user)
  name = ask('Name:')
  source_url = ask('Source URL:')
  rating = ask('Rating:')
  post_params = { name: name, source_url: source_url, date: Time.now, rating: rating }

  post = user.posts.create(post_params)
  post.save

end

def list_posts(user)
  posts = user.posts.all
  posts.each do |post|
  puts post.name
  end
end

def delete_posts(user)
  user.posts.destroy_all
end


logged_in = false

until logged_in
    puts 'Please login with your <id>'
    id = ask(id)
    user = User.find(id)
    logged_in = true
    # TODO: instantiate a user with his <id>
end

exit = false
while true
  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

  case ask('>').to_i
  when 1 then create_post(user)
  when 2 then list_posts(user)
  when 3 then delete_posts(user)
  when 4 then break
  end
end