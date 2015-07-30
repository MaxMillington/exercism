class Array


  def keep
    kept = []
    each do |x|
      kept << x if yield(x)
    end
    kept
  end

  def discard
    discarded = []
      each do |x|
        discarded << x unless yield(x)
      end
    discarded
  end

end
