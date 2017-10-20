class Animal

end

class Cat < Animal
end

class Tom_cat < Cat
  def self.name
    puts "Tom_cat"

end
end

a = Animal.new
puts a.class.ancestors
puts Animal.class.ancestors

b = Cat.new
puts b.class.ancestors

c = Tom_cat.new
puts c.class.ancestors
puts Tom_cat.class.ancestors
puts c.singleton_class.ancestors
