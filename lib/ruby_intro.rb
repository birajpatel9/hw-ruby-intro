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

def sum_to_n? arr, n
  s = Set.new
  (0..arr.length-1).each do |i|
    val = n - arr[i]
    if(s.include? val)
      return true
    else
      s << (arr[i])
    end
  end
  return false
  # YOUR CODE HERE
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
  end
  def price_as_string
    "$#{sprintf("%.2f",@price)}"
  end
end
