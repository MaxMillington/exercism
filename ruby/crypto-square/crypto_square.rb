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
    monkey = []
    normalize_plaintext.chars.each_slice(size) {|x| monkey << x.join("").downcase}
    monkey
  end

  def ciphertext
    cipher_array.join
  end


  def normalize_ciphertext
    cipher_array.join(' ')
  end

  private

  def cipher_array
    chunks = plaintext_segments.map do |s|
      Array.new(size) { |i| s[i] or '' }
    end
    chunks.transpose.map{ |s| s.join("").strip }
  end
end
