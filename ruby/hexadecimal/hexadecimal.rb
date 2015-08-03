class Hexadecimal

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def to_decimal
    hex_pattern = /^[[:xdigit:]]+$/
    if hex_pattern === input
      input.to_i(16)
    else
      return 0
    end
  end
end