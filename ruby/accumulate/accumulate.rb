class Array
  def accumulate
    reduce([]) do |memo, e| memo << yield(e)
    end
  end
end