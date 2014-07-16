class Playboy
  INITIAL_HAIR_LENGTH = 20  # beautiful long playboy hair
  attr_reader :conquests,:nationality
  attr_accessor :hair_length

  #TODO: implement necessary getters or setters to run meeting_casanova.rb
  def initialize(name, nationality)
    @conquests = []
    @name, @nationality = name, nationality
    @hair_length = INITIAL_HAIR_LENGTH
    @nationality = nationality
  end

  def meets(lady)
    @conquests << lady unless @married
  end

end