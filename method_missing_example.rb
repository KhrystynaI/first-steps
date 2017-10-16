class Person
def person_name
  puts "Any name"
end

def method_missing (name, *args)
  puts "You called undefinded method:#{name}(#{args.join(',')})"
  puts "whith some block" if block_given?

end

end

person = Person.new
person.person_name
person.some_method(2,3)do
  # block
end
print person.respond_to?(:some_method)
