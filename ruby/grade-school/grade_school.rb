class School

  def initialize
    @kiddos = []
  end

  def to_hash
    hashers = @kiddos.sort!.to_h
    hashers.safe_invert
  end

  def safe_invert
    each_with_object({}) do |(key,value),out|
      out[value] ||= []
      out[value] << key
    end
  end

  def add(name, grade)
    sub_array = []
    sub_array<< name
    sub_array << grade
    @kiddos << sub_array
  end

  def grade(grade)
    kids_in_the_grade = []
    @kiddos.map do |kid|
      if kid[1] == grade
          kids_in_the_grade << kid[0]
        end
    end
    kids_in_the_grade.sort!
  end

end

class Hash
  def safe_invert
    each_with_object({}) do |(key,value),out|
      out[value] ||= []
      out[value] << key
    end
  end
end
