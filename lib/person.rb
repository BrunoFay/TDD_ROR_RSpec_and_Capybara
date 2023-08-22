class Person
  attr_accessor :name, :age

  def is_adult
    if self.age >= 18
      "#{self.name} is an adult"
    else
      "#{self.name} is a child"
    end
  end
end