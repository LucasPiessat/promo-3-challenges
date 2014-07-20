require_relative "cookbook"
require_relative "recipe"
require_relative "controller"
require 'csv'

class View

  def display_recipes(recipes_tab)
    recipes_tab.each_with_index do |recipe, recipe_id|
    puts "#{recipe_id + 1} - #{recipe.name} : #{recipe.description}"
    end
  end

  def get_new_recipe_name
    puts "Name of recipe you want to add."
    return gets.chomp
  end

  def get_new_recipe_description
    puts "Describe the recipe you want to add."
    return gets.chomp
  end

  def get_id_to_remove
    puts "Which recipe do you want to delete?"
    return gets.chomp.to_i
  end

  def exit
    "See ya bro !"
  end

end