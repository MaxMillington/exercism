require 'pry'

class Anagram

  def initialize(word)
    @word = word
  end

  def match(array)
    array.map do |word|
      if word.downcase.chars.sort == @word.downcase.chars.sort && word.downcase != @word.downcase
        word
      end
    end.compact
  end

end