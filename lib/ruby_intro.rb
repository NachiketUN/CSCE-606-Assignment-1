# frozen_string_literal: true

# Part 1

def sum(arr)
  ans = arr.inject(0, :+)
  return ans
end

def max_2_sum(arr)
  ans = arr.sort().last(2).sum(0)
  return ans
end

def sum_to_n?(arr, number)
  arr.each_with_index do |element, i|
      arr.drop(i+1).each do |secondElement|
        if element + secondElement == number
          return true
        end
      end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(string)
  if (string[0] =~ /[a-zA-Z&&[^aeiouAEIOU]]/) == nil
    return false
  end
  return true
end

def binary_multiple_of_4?(string)
  if (string =~ /^0+\z|^[10]+00\z/) == nil
    return false;
  end
  return true
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new( "Expected Price to be greater than 0, 
    got #{price}")  if price <= 0
    
    raise ArgumentError.new( "Expected ISBN to be non empty String") if isbn.empty?
      
    @isbn = isbn
    @price = price
  end
  
  # Getters
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  # Setters
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price=price
  end
  
  #price_as_string method
  
  def price_as_string
    return "$"+ sprintf('%.2f', price)
  end
end
