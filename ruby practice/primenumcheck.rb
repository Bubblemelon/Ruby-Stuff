# A method that takes in an integer and
# returns true if it is prime; otherwise return false.
#
# if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
#
# Prime numbers are numbers that are only divisible by themselves and 1.
#
# Two is the only even prime number
# One is not a prime number

def is_prime?( number )

  if( number <= 1 )
    return false
  end

  array = [] # to store divisor

  i = 1
  while( number >= i ) # finding number's divisors

    if( number % i == 0 )
      array.push(i)
    end

    i += 1
  end # while
  #
  # Or as long as number can be divided by 2 (& is not 2 || number > 2) then it is not Prime
  # i.e. number % 2 == 0 ? false : true
  # because Two is the only even prime number !

  # p array

  if( array.length > 2 )
    p "The number #{number} is NOT Prime because it's divisors are #{array}"
    return false
  elsif( array.length == 2)
    p "The number #{number} is Prime because it's divisors are just #{array[0]} and itself:#{array[1]}"
    return true
  end # if


end # def

#
# TEST
#
is_prime?(5)
# is_prime?(60) #NO
# is_prime?(16) #NO
# is_prime?(17) #YES
# is_prime?(51) #NO
#
# puts("\nTests for is_prime?()")
# puts("")
#     puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
#     puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
#     puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
#     puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)
# puts("")
