class Clock
  # attr_reader :time
  # changed the mthod name to 'get_time', from 'to_s'. I could not get the initialize method to return anything butthe object itself, shich does not convert to a string

  def initialize(time_input)
    # while time_input[:hour] > 12

    require 'pry'; binding.pry
    if time_input[:minute] >= 60
      mins = transform_mins(time_input) if time_input[:minute]
    else
    end

    if time_input

    x = transform_hours(time_input, mins) if mins
    # require 'pry'; binding.pry
    # time_input[:hour] = (time_input[:hour] % 12) if time_input[:hour] && time_input[:hour]> 12
    # # time_input[:minute] = (time_input[:minute] % 60) if time_input[:hour] > 60
    # if time_input[:minute] && time_input[:minute] >= 60
    #   h = time_input[:minute] / 60
    #   time_input[:minute] = time_input[:minute] % 60
    #   #need another roll over?
    #   if time_input[:hour]
    #     # require 'pry'; binding.pry
    #     time_input[:hour] += h
    #     time_input[:hour] = (time_input[:hour] % 12) if time_input[:hour] > 12

    #   else
    #     time_input[:hour] = h
    #   end
    #   # add minutes to hours
    # else
    # end
    # # require 'pry'; binding.pry
    # @hour = time_input[:hour].to_s.rjust(2, '0')
    # @minute = time_input[:minute].to_s.rjust(2, '0')
    # require 'pry'; binding.pry
  end

  def transform_mins(time)
    # require 'pry'; binding.pry
    new_time = {hour: 0, minute: 0}
    if time[:minute] >= 60
      new_time[:hour] = time[:minute] / 60
      new_time[:minute] = time[:minute] % 60

    # require 'pry'; binding.pry
    else
      new_time[:minute] = time[:minute]
    end
    new_time
  end

  def get_time
    # @time = @hour[:hour].to_s.rjust(2, '0') + ':' + @minute[:minute].to_s.rjust(2, '0')
    @time = @hour + ':' + @minute
    return @time
  end

end