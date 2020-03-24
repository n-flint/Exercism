class Clock

  def initialize(time)
    @hour = time[:hour]
    @minute = time[:minute]
  end

  def get_time
    @minute = pos_mins if @minute && @minute < 0
    (':' + find_mins).insert(0, find_hours)
  end

  def pos_mins
    @rollover = @minute / 60
    @minute =  ((@minute - 60) % 60).to_s.rjust(2, '0').to_i
  end

  def find_mins
    @minute = 0 if @minute == nil
      if @minute >= 60
        @rollover = @minute / 60
        (@minute % 60).to_s.rjust(2, '0')
      else
        @minute.to_s.rjust(2, '0')
      end
  end

  def find_hours
    @hour = 0 if @hour == nil
    @hour = @hour + @rollover if @rollover
      if @hour >= 24
        (@hour % 24).to_s.rjust(2, '0')
      elsif @hour < 0
        ((@hour - 24) % 24).to_s.rjust(2, '0')
      else
        @hour.to_s.rjust(2, '0')
      end
  end
end