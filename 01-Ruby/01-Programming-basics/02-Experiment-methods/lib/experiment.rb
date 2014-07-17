# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Fixnum, and Array classes !

def get_rid_of_surrounding_whitespaces(a_string)
  a_string.strip

  # TODO: return a copy of the string with leading and trailing whitespaces removed
  # example: get_rid_of_surrounding_whitespaces("  hey yo  ") => "hey yo"
end

def belongs_to?(a_string, a_word)
  a_string.include? a_word

end
  # TODO: return true if a_string contains a_word
  # example: belongs_to?("hey jude", "jude") => true


def replace(initial_string, old_letter, new_letter)
    initial_string.gsub(old_letter, new_letter)
  end
  # TODO: return a copy of the string with the new letter replacing the old one
  # example: replace("casanova", "a", "o") => "cosonovo"


def exactly_divide(an_integer, a_divider)
  an_integer.fdiv(a_divider)
end
  # TODO: return divison of an_integer by a_divider (computing the floating division, NOT the euclidean one)
  # example: exactly_divide(13, 4) => 3.25


def is_divisible_by_two(an_integer)
  an_integer%2==0
  # TODO: return true if an_integer is divisible by 2
  # example: is_divisible_by_two(6) => true
end

def random_subset(an_array, sample_size)
  an_array.sample(sample_size)
  # TODO: return a random subset of an_array with size sample_size
  # example: random_subset(('a'..'z').to_a, 4) => ["u", "q", "l", "t"]
end

def randomize(an_array)
  an_array.shuffle
  # TODO: return a randomized copy of an_array
  # example: randomize([1, 2, 3, 4]) => [2, 1, 4, 3]
end

def ascending_order(an_array)
  an_array.sort
  # TODO: return a copy of an_array with elements in ascending order
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
end