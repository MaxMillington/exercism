class PhoneNumber

  def initialize(number)
    @number = number
  end

  def number

    number_1 = @number.delete "("
    number_2 = number_1.delete ")"
    number_3 = number_2.delete " "
    number_4 = number_3.delete "."
    number_5 = number_4.delete "-"

    if number_5.chars.any? {|n| n.include? "a"}
      '0000000000'
    elsif number_5.length == 10
        number_5
    elsif number_5.length == 11 && number_5[0] == "1"
      number_5[1..-1]
    else
      '0000000000'
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..-1]}"
  end

end