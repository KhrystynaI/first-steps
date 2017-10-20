puts Enumerator.class.ancestors #Enumerator -- class
puts
puts Enumerator.ancestors
puts
puts Enumerator.included_modules
puts
puts Enumerable.class.ancestors #Enumerable -- module

class Animal
  include Enumerable

  def initialize(*members)
    @members = members
  end

  def each(&block) # must be else Enumerable will not working
    @members.each(&block)
  end
end

a = Animal.new("cat","dog","puma")

puts a.map(&:upcase)

v = Enumerator.new([1,2,3])
puts v.map { |e| e+1 }
