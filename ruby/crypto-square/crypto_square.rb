require 'pry'

class Crypto

  def initialize(input)
    @input = input
  end


  def normalize_plaintext
    @input.downcase.chars.reject do |x|
      x == "#" || x == "$" || x == "%" || x == "^" || x == "&" || x == "!" || x == "," || x == "."
    end.join.gsub(/\s+/, "")
  end

  def size
    number = normalize_plaintext.length
    Math.sqrt(number).ceil
  end

  def plaintext_segments
    l = @input.length
    monkey = []
    normalize_plaintext.chars.each_slice(Math.sqrt(l)) {|x| monkey << x.join("").downcase}
    monkey
  end

  def ciphertext
    plaintext_segments.map.with_index { |x, index| x[index]}.join
  end

end