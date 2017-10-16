class Animal
  def all_animal
    puts "all animals have brain"
    puts self.class
    puts self
  end

def self.foot # only for class
puts "Some animal has foot"
end

  end
  Animal.foot
  h = Animal.new
  #h.foot -- it will be wrong

a = Animal.new
a.all_animal

class Cat < Animal

def choose_name
  puts "Cat has name"
  names = "Tom"
  self.names # Jim because is "self"
  puts names # Tom
end

def names
  puts "Jim"
end

def all_animal
  puts "all animals have blood"
  super
  puts self.class
  puts self
  end
end


c = Cat.new
c.choose_name
c.all_animal
b = Cat.new
b.all_animal
