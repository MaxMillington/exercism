class Clock

  def self.at(hour, min = 0)
    minutes = hour * 60 + min
    new(minutes)
  end

  def initialize(minutes)
    @minutes = minutes
  end

  def +(add_minutes)
    puts add_minutes
    self.class.new(@minutes + add_minutes)
  end

  def -(subtract_minutes)
    self.+(-subtract_minutes)
  end

  def ==(other)
    hour_and_minute == other.hour_and_minute
  end

  def to_s
    "%02d:%02d" % hour_and_minute
  end

  def hour_and_minute
    [ @minutes / 60 % 24, @minutes % 60 ]
  end
end