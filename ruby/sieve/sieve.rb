class Sieve

  def initialize(num)
    @num = num
  end

  def primes
    nums = [nil, nil, *2..@num]
    (2..Math.sqrt(@num)).each do |i|
      (i**2..@num).step(i){|m| nums[m] = nil}  if nums[i]
    end
    nums.compact
  end
  
end