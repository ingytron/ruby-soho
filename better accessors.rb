class Person
  attr_reader :age
  attr_accessor :name

  def initialize(name, ageVar)
    @name = name
    self.age = ageVar # Prevents creation of a local variable for age, calls age= instance method
    puts age
  end
  def age= (new_age)
    @age ||= 5 # Sets the default as 5 the first time around
    @age = new_age unless new_age > 120
  end
end

person1 = Person.new("Kim", 122)
puts person1.age
puts "My age is #{person1.age}"
person1.age = 22 #Setter will prevent this change
puts person1.age # => 56
