class Person
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = "Feeling Happy!"
  end

  def sad!
    @status = "Feeling Sad!"
  end

  def excited!
    @status = "Feeling Excited!"
  end
  def is_adult
    if self.age >= 18
      "#{self.name} is an adult"
    else
      "#{self.name} is a child"
    end
  end
end