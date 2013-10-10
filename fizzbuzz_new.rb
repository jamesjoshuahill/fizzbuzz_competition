class Fixnum
  def multiple_of?(divisor)
    self % divisor == 0
  end

  def fizzbuzz
    return 'FizzBuzz' if self.multiple_of?(15)
    return 'Buzz' if self.multiple_of?(5)
    return 'Fizz' if self.multiple_of?(3)
    "#{self}"
  end
end

class Range
  def fizzbuzz
    self.to_a.map(&:fizzbuzz).join(' ')
  end
end
