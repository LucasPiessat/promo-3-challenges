#Encoding: utf-8
require 'csv'
#filepath = '/Users/lucaspiessat/code/LucasPiessat/promo-3-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv'
def most_successfull(number, max_year, file_name)

csv_options = { col_sep: ',', encoding: "iso-8859-1:UTF-8"}
movies_before_max_year = []

  CSV.foreach(file_name, csv_options) do |row|
    if row[1].to_i < max_year
    movies_before_max_year << {:name => row[0], :year => row[1].to_i, :earnings => row[2].to_i}
    end
  end

  movies_before_max_year.sort_by { |tab| tab[2].to_i }.first(number)
  #TODO: return the number most successfull movies max_year
end