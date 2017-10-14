class Animal
  def all_animal
  #  super (if "all_animal" method could be in Object it would be work, but now we have Method_missing)
    puts "all animal have brain"
    puts self.class
    puts self
  end

  end
a = Animal.new
a.all_animal

class Cat < Animal

def choose_name
  puts "Cat has name"
  names = "Tom"
  self.names # Jim
  puts names # Tom
end

def names
  puts "Jim"
end

def all_animal
  puts "all animal have blood"
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
