# A method that takes in a number and returns true if it is a
# power of 2. Otherwise, it returns false.
#
# Notes:
# `%` modulo operation
# `5 % 2` returns the remainder when dividing 5 by 2; therefore, `5 % 2 == 1`.
# `6 % 2 == 0`.
#


# powers of two 2^n
# 2^0  2^1  2^2  2^3  2^4  2^5  2^6
# 1    2   4    8    16   32   64
# http://www.tsm-resources.com/alists/pow2.html
#
# Dont use the function below
# Math.sqrt(x)
# sqrt(x) → Float
# Returns the non-negative square root of x.
#
# Not this:
#
# 0^2 1^2  2^2  3^2  4^2  5^2  6^2       --> e.g. sqrt(9) == 3
# 0   1    4    9   16    25   36        --> e.g. sqrt(16) == 4
#

#
# Using mulitplication
#
def power_of_two?(num)

  result = 1  # base case

  while( result != num )

    result *= 2
    # puts( result )

    if( result > num )
      break
    end

  end

  if( result == num )
    return true
  else
    return false
  end

end

#
# using modulo and division
#
def power_of_two2( num )


  if num < 1
    return false
  end

  while true

    if num == 1
      return true

    elsif num % 2 == 0 # keep doing until remainder is not zero ( a factor of two )
      num = num / 2
      # puts( num ) # eventually num will equal to 1

    else
      return false
    end

  end # while



end # def

# Test - should print all true

puts("\nTests for power_of_two?()")
puts("")
    puts('power_of_two?(1) == true: ' + (power_of_two?(1) == true).to_s)
    puts('power_of_two?(16) == true: ' + (power_of_two?(16) == true).to_s)
    puts('power_of_two?(64) == true: ' + (power_of_two?(64) == true).to_s)
    puts('power_of_two?(78) == false: ' + (power_of_two?(78) == false).to_s)
    puts('power_of_two?(0) == false: ' + (power_of_two?(0) == false).to_s)
puts("")

puts("\nTests for power_of_two2()")
puts("")
    puts('power_of_two2(1) == true: ' + (power_of_two2(1) == true).to_s)
    puts('power_of_two2(16) == true: ' + (power_of_two2(16) == true).to_s)
    puts('power_of_two2(64) == true: ' + (power_of_two2(64) == true).to_s)
    puts('power_of_two2(78) == false: ' + (power_of_two2(78) == false).to_s)
    puts('power_of_two2(0) == false: ' + (power_of_two2(0) == false).to_s)
puts("")
