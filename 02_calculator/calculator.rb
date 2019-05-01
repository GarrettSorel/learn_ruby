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
  factorial_total = []

  if number == 0
    return 0
  end

  if number > 0
    while number > 0 do
      factorial_total.push(number)
      number - 1
    end
  end

  return factorial_total.inject(:*)
end
