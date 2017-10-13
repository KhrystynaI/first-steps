class Tom
def routine
  wake_up
  breakfast
  sleep
end

protected
def wake_up
  puts "wakes up"
end

def breakfast
puts "has breakfast"
end

def sleep
  puts "has a nap"
end
end


Tom_cat = Tom.new
Tom_cat.routine
