class ETL

  def self.transform(old_hash)
    new_hash = {}
    old_hash.map do |key, value|
      value.map do |element|
        new_hash[element.downcase] = key
      end
    end
    new_hash
  end

end