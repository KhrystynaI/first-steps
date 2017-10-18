load 'module.rb' # can be "require" but it loaded file only ones, "load" whenever we use this

class Create_rainbow
include Colors
#include Person
end

a = Create_rainbow.new
a.col
#a.person# if we dont add "include Person" we woudnt have method person
# we have all methods from "module.rb" so we can see methods from class Add_class
