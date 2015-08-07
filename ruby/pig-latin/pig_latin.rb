class PigLatin
  def self.translate(string)
    string.split.map do |word|
      if word[0] == "a"
        "#{word}" + "#{word[0]}" + "y"
      elsif word[0..1] == "yt"
        "#{word}" + "ay"
      elsif word[0] == "e"
        "#{word}" + "ay"
      elsif word[0] == "x" && word[1] != "e"
        "#{word}" + "ay"
      elsif word[0..2] == "thr"
        "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
      elsif word[0..2] == "sch"
        "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
      elsif word[1] == "h"
        "#{word[2..-1]}" + "#{word[0..1]}" + "ay"
      elsif word[0..1] == "qu"
        "#{word[2..-1]}" + "#{word[0..1]}" + "ay"
      elsif word[1..2] == "qu"
        "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
      else
        "#{word[1..-1]}" + "#{word[0]}" + "ay"
      end
    end.join(" ")
  end
end
