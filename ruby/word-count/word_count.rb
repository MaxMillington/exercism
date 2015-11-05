class Phrase
  require 'pry'

  def initialize(phrase)
    @phrase = phrase.downcase.scan(/([A-Za-z0-9']+)/).flatten
  end

  def word_count
    frequencies = Hash.new(0)
    @phrase.each { |word| frequencies[word] += 1}
    frequencies
  end

end
