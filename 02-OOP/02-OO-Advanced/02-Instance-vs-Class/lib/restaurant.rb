class Restaurant
  attr_accessor :city, :name
  attr_reader :average_rating
  #TODO add relevant accessors if necessary

  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0
    @rate = []
    #TODO: implement constructor with relevant instance variables
  end

  def rate(grade)
    @rate << grade
    @average_rating = (@rate.reduce(:+)/@rate.size)
  end

  def self.filter_by_city(restaurants, city)
    restaurant_list =[]
    restaurants.each do |resto|
      if resto.city == city
        restaurant_list << resto
      end
    end
    restaurant_list
  end

  #TDO: implement #filter_by_city and #rate methods

end
