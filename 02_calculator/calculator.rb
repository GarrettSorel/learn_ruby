def add(num_1, num_2)
  num_1 + num_2
end

def subtract(num_1, num_2)
  num_1 - num_2
end

def sum(numbers)
  numbers.sum
end

def multiply(numbers)
  numbers.inject(:*)
end

def power(num_1, num_2)
  num_1 ** num_2
end

def factorial(number)
  new_number = 1

  if number == 0
    return 1
  end

  while number > 0
    new_number = new_number * number
    number = number - 1
  end

  return new_number
end
