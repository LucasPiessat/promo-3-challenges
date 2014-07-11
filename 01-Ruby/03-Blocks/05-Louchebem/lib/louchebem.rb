def louchebemize_word(word)
  suffixe = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  vowels = %w(a e i o u y A E I O U Y)
  #special_characters = [""]

  if word.length == 1
    word
  elsif vowels.include?(word[0])
    "l" + word + "#{suffixe.sample}"
  else
    louchebemized_word = ""
    prefix = ""
    suffix = ""
    word.chars.each_with_index do |char, index|
      if vowels.include?(char) then
        break
      else
        prefix = word[index+1..-1]
        suffix = suffix + word[index]
        louchebemized_word = prefix + suffix
      end
    end
    return louchebemized_word = "l" + louchebemized_word + "#{suffixe.sample}"
  end
end