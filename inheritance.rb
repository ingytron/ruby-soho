class Dog
  def to_s
    "Dog"
  end
  def bark
    "barks loudly"
  end
end
class SmallDog < Dog # Inherits from Dog
  def bark # Override
    "barks annoyingly"
  end
end

dog = Dog.new # This is a new class method
small_dog = SmallDog.new
puts "#{dog}1 #{dog.bark}"
puts "#{small_dog}2 #{small_dog.bark}"
