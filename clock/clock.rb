class Clock

  attr_reader :time

  def initialize(hours_and_or_minutes)
    @hours_and_or_minutes = hours_and_or_minutes
    @hours_and_or_minutes.default = 0
    @time = Time.new(1970,1,1,0,0,0) + minutes_to_seconds
  end

  def hours_to_minutes
    @hours_and_or_minutes[:hour] * 60
  end

  def minutes_to_seconds
    (hours_to_minutes + @hours_and_or_minutes[:minute]) * 60
  end

  def +(clock)
    (@time + clock.minutes_to_seconds).strftime("%H:%M")
  end

  def -(clock)
    (@time - clock.minutes_to_seconds).strftime("%H:%M")
  end

  def ==(clock)
    self.to_s == clock.to_s
  end

  def to_s
    @time.strftime("%H:%M")
  end

end
