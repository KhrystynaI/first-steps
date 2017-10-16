class Person
def method_missing(name, *args)
return super unless [:hello, :bye].include?(name)
puts "Greeting"
end


end

person = Person.new
person.hello
person.name
