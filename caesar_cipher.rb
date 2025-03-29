# frozen_string_literal: true

def caesar_cipher(string, shift)
  result = ''
  string.each_char do |char|
    if char.match?(/[A-Za-z]/)
      ascii_offset = char.match?(/[A-Z]/) ? 65 : 97
      shifted_char = (((char.ord - ascii_offset + shift) % 26) + ascii_offset).chr
      result += shifted_char
    else
      result += char
    end
  end
  result
end
puts caesar_cipher('hello world', 3)
