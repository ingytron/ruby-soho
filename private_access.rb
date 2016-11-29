class Person
  def initialize(age)
    self.age = age # LEGAL - exception allowed, otherwise it would be a local variable and go out of scope
    puts my_age
    # puts self.my_age # ILLEGAL, cannot use self or any other receiver
  end

private
  def my_age
    @age
  end

  def age=(age)
    @age = age
  end

 end

Person.new(25)
