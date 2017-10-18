module Colors # we cannt use module like instance, but it has own class

  def col
  puts "module Colors"
  puts self# take object
  end

class Add_class
attr_accessor :some_name
end

end

module Person
def person
  puts "module Person"
  puts self.class# take class
end

class Add_class
  attr_accessor :name
end

end

# We can use module for namespase -- class Add_class

a = Colors::Add_class.new
puts a.some_name = "red"
b = Person::Add_class.new
puts b.name ="person"
