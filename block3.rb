def exbloc(name)
puts "cat red"
yield (name) if block_given?
puts "dog red"
end

exbloc("Tom") do |name|
puts "cat #{name} find friend"
end

