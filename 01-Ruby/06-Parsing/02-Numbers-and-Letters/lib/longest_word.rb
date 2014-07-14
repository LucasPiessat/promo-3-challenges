#Code lâchement copié chez Gabrielle.
require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  array = ("A".."Z").to_a
  generated_grid = []
  for i in (1..grid_size)
    generated_grid << array[rand(27)]
  end
  generated_grid
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
  hash = {}
  if check_if_included?(attempt, grid)
    if translation(attempt).nil?
      hash[:translation] = nil
      hash[:time] = end_time - start_time
      hash[:score] = 0
      hash[:message] = "not an english word"
    else
      hash[:time] = end_time - start_time
      hash[:translation] = translation(attempt)
      hash[:score] = "#{attempt.split(//).count - 1.to_f / (start_time - end_time)}"
      hash[:message] = "well done"
    end
  else
    hash[:translation] = translation(attempt)
    hash[:time] = end_time - start_time
    hash[:score] = 0
    hash[:message] = "not in the grid"
  end
  return hash
end

def check_if_included?(attempt, grid)
  letters = attempt.upcase.split(//)
  letters.all? { |letter| letters.count(letter) <= grid.count(letter) }
end

def translation(attempt)
  translated_word = ""
  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
  api_return = {}
  open(api_url) do |stream|
    api_return = JSON.parse(stream.read)
  end
  if api_return.has_key? "Error"
    translated_word = nil
  else
    translated_word = api_return["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
  end
  return translated_word
end






















#require 'open-uri'
#require 'json'


#def generate_grid(grid_size)
  #letters =("A".."Z").to_a
  #grid = []
  #for i in (1..grid_size)
    #grid << letters.sample
  #end
  #grid
#end

#def word_in_grid?(attempt, grid)

  #grid = attempt.split(//)
  #grid.all? { |letter| letters.count(letter) <= grid.count(letter) }
#end

#def translation (attempt)
  #translated = ""
  #api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
  #word_french={}
  #open(api_url) do |stream|
    #word_french = JSON.parse(stream.read)
  #end
  #if word_french["Error"] == "NoTranslation"
    #translated = nil
  #else
    #translated = word_french["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
  #end
  #return translated
#end


#def run_game(attempt, grid, start_time, end_time)
  #hash = {}
    #if word_in_grid?(attempt, grid)
      #if translation(attempt).nil?
        #hash[:translation] = nil
        #hash[:time] = end_time - start_time
        #hash[:score] = 0
        #hash[:message] = "Your word is not english."
      #else
        #hash[:time] = end_time - start_time
        #hash[:message] = "Nice game !"
        #hash[:translation] = translation(attempt)
        #ligne suivante floue...
        #hash[:score] = "#{attempt.split("").count - 1.to_f / (start_time - end_time)}"
      #end
    #else
      #hash[:translation] = translation(attempt)
      #hash[:time] = start_time - end_time
      #hash[:score] = 0
      #hash[:message] = "Respect the rules please. Cheater !"
    #end
  #return hash
#end
