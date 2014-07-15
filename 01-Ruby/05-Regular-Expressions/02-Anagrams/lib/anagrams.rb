def anagrams?(a_string, another_string)
  a_string = a_string.downcase
  another_string = another_string.downcase
    a_string.scan(/\w/i).sort == another_string.scan(/\w/i).sort ? true : false

  #TODO: implement the obvious method to test if two words are anagrams
end

def anagrams_on_steroids?(a_string, another_string)
  hash_string = {}
  hash_another = {}
  string_a = a_string.downcase.scan(/\w/i)
  string_b = another_string.downcase.scan(/\w/i)
  #puts string_a
  hash_a = {}
  hash_b = {}

  string_a.each do |letter|
    if hash_a[letter]
      hash_a[letter] += 1
    else
      hash_a[letter] = 1
    end
  end
  string_b.each do |letter|
    if hash_b[letter]
      hash_b[letter] += 1
    else
      hash_b[letter] = 1
    end
  end
  hash_a == hash_b ? true : false
end