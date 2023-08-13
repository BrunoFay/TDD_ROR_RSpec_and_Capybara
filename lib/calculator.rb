class Calculator
  def sum(num, num_two)
    unless num.is_a?(Numeric) && num_two.is_a?(Numeric)
      return "sum function only accept numbers"
    end
      num + num_two
  end
  def divide(num, num_two)
    num/num_two
  end
end