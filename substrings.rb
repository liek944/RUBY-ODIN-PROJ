# frozen_string_literal: true

def substrings(word, dictionary)
  result = {}
  lowercase_word = word.downcase

  dictionary.each do |substring|
    count = lowercase_word.scan(substring.downcase).length
    result[substring] = count if count.positive?
  end

  result
end
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts 'Test 1:'
p substrings('below', dictionary)
