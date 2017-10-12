def exbloc
puts "cat red"
yield if block_given?
puts "dog red"
end

exbloc {puts "cat find friend"}
