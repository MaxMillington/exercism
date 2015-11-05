require 'pry'

class Crypto

  def initialize(input)
    @input = input
  end

  def normalize_plaintext
    @input.downcase.scan(/([A-Za-z0-9]+)/).flatten.join
  end

  def size
    Math.sqrt(normalize_plaintext.size).ceil
  end

  def plaintext_segments
    segments = []
    normalize_plaintext.chars.each_slice(size) do |segment|
      segments << segment.join
    end
    segments
  end

  def ciphertext
    cipher_array.join
  end

  def normalize_ciphertext
    normalized_text = cipher_array.each do |element|
      element.join
    end
    normalized_text.map {|element| element.join}.join(" ")
  end

  private

  def cipher_array
    squared_segments = plaintext_segments.map do |segment|
      Array.new(size) do |index|
        segment[index] || ""
      end
    end.compact
    squared_segments.transpose
  end
  
end
