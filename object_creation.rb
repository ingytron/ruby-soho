class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  def get_info
    @additional_info = "Interesting"
    "Name: #{@name}, age: #{@age}"
  end
  def name=(new_name)
    @name = new_name
  end
end

person1 = Person.new("Joe", 23)
p person1.instance_variables
puts person1.get_info # calling this method creates the new instance var
p person1.instance_variables

person1.name = "Fred" # It's okay to have a space even though the method name doesn't have one
puts person1.name # => "Fred"
