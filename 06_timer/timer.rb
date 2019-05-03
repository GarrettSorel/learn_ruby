class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    seconds_holder = ""
    minutes = (@seconds / 60) % 60
    minutes_holder = ""
    hours = @seconds / (60 * 60)
    hours_holder = ""

    if seconds < 10
      seconds_holder = "0" + seconds.to_s
    else
      seconds_holder = seconds.to_s
    end

    if minutes < 10
      minutes_holder = "0" + minutes.to_s
    else
      minutes_holder = minutes.to_s
    end

    if hours < 10
      hours_holder = "0" + hours.to_s
    else
      hours_holder = hours.to_s
    end

    @time_string = hours_holder + ":" + minutes_holder + ":" + seconds_holder

  end
end
