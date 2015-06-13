class Phrase

  require 'pry'

  def initialize(phrase)
    stripped_phrase = phrase.downcase.delete("!@$&%^:.")
    @phrase = stripped_phrase.gsub(',', ' ' ).split
  end

  def word_count
    frequencies = Hash.new(0)
    @phrase.each {|word| frequencies[word] += 1 }
    frequencies
  end

end
