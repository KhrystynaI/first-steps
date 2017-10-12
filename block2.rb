name = "Rex"
def exbloc
puts "cat red"
yield if block_given?
puts "dog red"
end

exbloc do
puts "cat #{name} find friend" 
end


