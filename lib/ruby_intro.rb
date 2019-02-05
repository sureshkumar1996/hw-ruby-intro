# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #arr.inject(0, :+)
  
  total = 0
  arr.each { |num| total =  total + num }
  total
end

def max_2_sum arr
  # YOUR CODE HERE

  if arr.length > 1
    max_arr = Array[arr.sort[-1], arr.sort[-2]]
  else
    max_arr = arr
  end
  sum(max_arr)    #Calling Sum method defined above

end

def sum_to_n? arr, n
  # YOUR CODE HERE

  if arr.length == 0 or arr.length == 1
    false
  else
    flag = -1
    for element1 in 0..arr.length-1
      for element2 in 0..arr.length-1
        if (element1 != element2) and (arr[element1] + arr[element2] == n)
          flag = 0
          break
        end
      end
    end
    flag == 0 ? true : false
  end
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  
  "Hello, " + name    #String Concatenation
  
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  #(s[0] =~ /([^AEIOU])&([^aeiou])/) ? true : false
  (s[0] =~ /[b-d-f-h-j-n-p-t-v-z]/i) ? true : false 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if s =~ /[^(0-1)]/    #Checking the string is a valid binary number or not
    false
  else
    intnum = Integer(s) rescue nil
    if intnum == nil
      false
    elsif intnum % 4 == 0
      true
    else
      false
    end
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(isbn, price)
    @isbn   = isbn
    @price  = price
    
    raise ArgumentError if @isbn.length == 0 or @price <= 0
  end
  
  def price_as_string 
    price_format = 0.0
    price_format = "$%.2f" % @price   #fomatstring
    price_format
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
end
