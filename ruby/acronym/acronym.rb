class Acronym
  def self.abbreviate(given)
    acc = ""
    p splits = given.scan(/[A-Z]+[a-z]*|[a-z]+/) do |x|
      yield x
    end
    splits.each do |word|
      acc << word[0]
    end
    acc.upcase
  end
end