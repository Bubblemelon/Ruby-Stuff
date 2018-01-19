# a method that takes an integer `n`
#
# Returns:
# n*(n-1)*(n-2)*...*2*1. Assuming n >= 0.
#
# Base case:
# factorial(0) == 1
#

#
# Using recursion
#
def factorial(n)

  if( n < 0 )  # in case if n was smaller than 0
    return nil
  end

  if( n == 0 ) # the base case
    return 1
  else
    return n * ( factorial(n-1) ) # (n-1) keeps getting smaller til it reaches the base case
  end

end

#
# Without recursion
#
def factorial2( n )

  if( n < 0 )
    return nil
  end

  result = 1 # serves as base case

  while( n > 0 )
    result *= n
    n -= 1
  end

  return result

end #def

# Tests ( should all print true )

puts("\nTests for factorial()")

    puts()

    puts(
      'factorial(0) == 1: ' + (factorial(0) == 1).to_s
    )
    puts(
      'factorial(1) == 1: ' + (factorial(1) == 1).to_s
    )
    puts(
      'factorial(2) == 2: ' + (factorial(2) == 2).to_s
    )
    puts(
      'factorial(3) == 6: ' + (factorial(3) == 6).to_s
    )
    puts(
      'factorial(4) == 24: ' + (factorial(4) == 24).to_s
    )
    puts()


  puts("\nTests for factorial2()")

      puts()

      puts(
        'factorial2(0) == 1: ' + (factorial2(0) == 1).to_s
      )
      puts(
        'factorial2(1) == 1: ' + (factorial2(1) == 1).to_s
      )
      puts(
        'factorial2(2) == 2: ' + (factorial2(2) == 2).to_s
      )
      puts(
        'factorial2(3) == 6: ' + (factorial2(3) == 6).to_s
      )
      puts(
        'factorial2(4) == 24: ' + (factorial2(4) == 24).to_s
      )
      puts()
