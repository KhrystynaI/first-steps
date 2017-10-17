class Person


def initialize(fname)
  @fname = fname
end

def getter(lastname)
  self.instance_variable_get("@#{lastname}")
end

def setter(lastname, value)
  self.instance_variables_set("@#{lastname}", value)
end


  #def method_missing(name, *args, &block)
  #  return getter(lastname) if name.to_s =~/^(w*)$/ and self.instance_variables.include ? ("@#{lastname}".to_sym)
  #  return setter(lastname, *args) if name.to_s =~/^(w*)=$/ and  self.instance_variables.include ? ("@#{lastname}".to_sym)
  #  super
  #end

  def method_missing(name, *args)
    iv = "@#{name.to_s}"
    if instance_variables.include ? (iv.to_sym)
        instance_variable_get(iv)
    else
      super
      end
end


end





person = Person.new("Bob")
#puts person.fname
puts person.add_some_variable(:@last_name, "Gerz")
