require 'open-uri'
require 'json'


def generate_grid(grid_size)
  letters =("a".."z").to_a
  letters_random = letters.sample(grid_size)
  #TODO: generate random grid of letters
end


def run_game(attempt, grid, start_time, end_time)
  word_french={}
  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"

  open(api_url) do |stream|
    word_french = JSON.parse(stream.read)
  end

  hash = {}
  if word_french["Error"] == "NoTranslation"
    hash[:time] = end_time - start_time
    hash[:message] = "Votre mot n'est pas anglais"
    hash[:score] = 0
    puts "Erreur, #{hash[message]}, votre score est donc de #{hash[:score]} !"
  else
  puts word_french
   hash[:time] = end_time - start_time
   hash[:translation] = word_french["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
   hash[:message] = "Well done boy !"
   hash[:score] = 1
  end




end

def word_exists





  #TODO: runs the game and return detailed hash of result
end
