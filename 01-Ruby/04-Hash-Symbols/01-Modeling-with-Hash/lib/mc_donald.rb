
def poor_calories_counter(burger, side, beverage)
  calories = {
"Cheese Burger" => 290,
"Big Mac" => 300,
"Mc Bacon" => 400,
"Royal Cheese" =>  130,
"French fries" => 130,
"Potatoes" => 130,
"Coca" => 160,
"Sprite" => 170
}
  calories_eated = calories[burger] + calories[side] + calories[beverage]
  return  calories_eated

end



  def calories_counter(*orders)
   menu = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" =>  130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170,
  "Happy Meal" => poor_calories_counter("Cheese Burger","French fries","Coca"),
  "Best Of Big Mac" => poor_calories_counter("Big Mac","French fries","Coca"),
  "Best Of Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes","Sprite")
  }
    somme = 0
    orders.each do |ord|
      somme += menu[ord]
    end
    return somme
  end






##