require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts 'Seeding database...'

User.new(name:Faker::Name.name, email:Faker::Internet.email)

# TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users