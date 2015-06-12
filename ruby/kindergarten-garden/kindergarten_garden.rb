class Garden

  def initialize (garden, students=nil)
    @garden = garden.split("\n")
    @students = students
  end

  def plant_list
    {"R" => :radishes, "V" => :violets, "C" => :clover, "G" => :grass}
  end

  def method_missing(name)
    formatted_name = name.to_s
    if @students

      starting_index = @students.sort.index(formatted_name.capitalize) * 2
      get_plants(starting_index, (starting_index +1) )

    else
      first_letter_of_name = formatted_name.chars.first # a, b, c
      starting_index = ("a".."z").to_a.index(first_letter_of_name) * 2
      get_plants(starting_index, starting_index + 1)
    end
  end

  def get_plants(start, ending_plant)
    @garden.map do |garden_line|
      row_plants = garden_line[start..ending_plant] # "RC"
      row_plants.chars.map { |plant| plant_list[plant] }
    end.flatten
  end
end