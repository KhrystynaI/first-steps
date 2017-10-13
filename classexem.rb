class Tom

  attr_accessor :schedule

  def initialize(day_schedule)
    @schedule = day_schedule
  end

  def routine
    wake_up
    breakfast
    sleep
  end

  private

  def wake_up
    puts "wakes up #{schedule[:wake_up]}"
  end

  def breakfast
    puts "has breakfast #{schedule[:breakfast]}"
  end

  def sleep
    puts "has a nap #{schedule[:sleep]}"
  end

end


some_schedule = {
  wake_up: '8:00',
  breakfast: '9:00',
  sleep: '23:00'
}

tom_cat = Tom.new(some_schedule)
tom_cat.routine
