class Dessert
  attr_reader  :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    (0..200).cover?(@calories) ? true : false
  end

  def delicious?
   true
  end
end

class JellyBean < Dessert
  attr_reader :flavor
  def initialize(name, calories, flavor)
    @flavor = flavor
  end
  def delicious?
    @flavor == "black licorice" ? false : super
  end
end