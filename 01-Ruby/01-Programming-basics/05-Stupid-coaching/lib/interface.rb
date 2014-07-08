require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Parlez à votre coach"
ask= gets.chomp
puts coach_answer(ask)
