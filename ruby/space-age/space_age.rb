require 'pry'

class SpaceAge

  def initialize(number)
    @number = number
  end

  def seconds
    @number
  end

  def on_earth
    earth = @number/31557600.0
    earth.round(2)
  end

  def on_mercury
    mercury = @number / 7600525.80461407
    mercury.round(2)
  end

  def on_venus
    venus = on_earth * 1.624
    venus.round(2)
  end

  def on_mars
    mars = on_earth / 1.881
    mars.round(2)
  end

  def on_jupiter
    jupiter = on_earth / 11.858
    jupiter.round(2)
  end

  def on_saturn
    saturn = on_earth / 29.43
    saturn.round(2)
  end

  def on_uranus
    uranus = on_earth / 84.06
    uranus.round(2)
  end

  def on_neptune
    neptune = on_earth / 164.658
    neptune.round(2)
  end

end