SUNNY = File.read('weather.info').strip == 'sunny'

class Tom

  attr_accessor(:schedule)

  def initialize(day_schedule)
    @schedule = day_schedule
  end

  define_method :routine do
    wake_up
    breakfast
    sleep
  end

  if SUNNY

    define_method :wake_up do
      puts "wakes up #{schedule[:wake_up]}"
    end

    define_method :breakfast do
      puts "has breakfast #{schedule[:breakfast]}"
    end

    define_method :sleep do
      puts "has a nap #{schedule[:sleep]}"
    end

  else

    define_method :wake_up do
      puts "wakes up 10:00"
    end

    define_method :breakfast do
      puts "has breakfast 11:00"
    end

    define_method :sleep do
      puts "has a nap 22:00"
    end
  end

end


some_schedule = {
  wake_up:   '8:00',
  breakfast: '9:00',
  sleep:     '23:00'
}

tom_cat = Tom.new(some_schedule)
tom_cat.routine
