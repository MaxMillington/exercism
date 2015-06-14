class Bob

  def hey(input)
    if input.strip.empty?
      "Fine. Be that way!"
    elsif input == input.upcase && input != input.downcase
      "Whoa, chill out!"
    elsif input[-1] == "?"
       "Sure."
    else
      "Whatever."
    end
  end

end