# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
	sum += i
  end
 return sum
end

def max_2_sum(arr)
  if (arr.empty?)
    return 0
  end
  if(arr.length == 1)
    return arr[0]
  end
  sum = arr.sort[-1] + arr.sort[-2]
  return sum
end

def sum_to_n?(arr, n)
    (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }

  end


# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
                            
  if s.length == 0
    return false
  end
  c = s[0].downcase
  if c!~/[[:alpha:]]/
    return false
  end
  if(c=='a' || c=='e' || c=='i'||c=='o'||c=='u')
    return false
  else
    return true
  end
end


def binary_multiple_of_4? s
  return false unless s =~ /^[01]+$/
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if (isbn.empty? || price <= 0)
      raise ArgumentError
    end
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
    "$#{sprintf("%.2f",@price)}"
  end
end
