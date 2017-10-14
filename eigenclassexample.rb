class Dog

def my_self
  puts self
end

end

d = Dog.new
d.my_self # parent Dog -- Object -- BasicObject
c = Dog.new
c.my_self # parent Dog -- Object -- BasicObject
def c.gh
  puts "only me have this method"
  puts self
  end
c.gh #this is singlton method. for d object it does not work.  parent Eigen class -- Dog -- Object -- BasicObject
#d.gh  can try
puts Dog.class # parent Class -- Module -- Object -- BasicObject
