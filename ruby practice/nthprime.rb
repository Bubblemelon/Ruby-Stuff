#
# A method that returns the nth prime
#
# Prime numbers are the numbers greater than one
# that are not products of two smaller numbers i.e. composite numbers
#
#
# Calls prime_num_gen() to generate prime number sequence
#
# Returns the element specified by index n ( counting from 0-th to n-th)
#
# https://en.wikipedia.org/wiki/Prime_number
#
def nth_prime( n )

  prime_number_array = prime_num_gen( n + 1 )

  p prime_number_array[n]

  return prime_number_array[n]

end

#
# Generates a sequence of prime numbers in ascending order
# The amount of numbers generated is specified by array_size
#
def prime_num_gen( array_size )

  # array_size == array.length

  array = []

  divisors = []

  i = 0
  while( array_size != array.length )

    # p i

    if( i >= 2 ) # 0 and 1 are not prime

      if( i == 2 ) # two is a prime
        # p " 2 is pushed"
        array.push(i)
      end

      if( i % 2 != 0 ) # prime numbers cannot be even

        # p " i #{i}"
        # p " divisors #{divisors}"

        # START extra check - if i has more than 2 divisors
        #
        # IMPROVEMENT!!!!
        #
        # Could have simply called is_prime?( i ) --> returns true if prime
        # if is_prime? ? array.push(i) : p "do nothing"
        #
        j = 1
        while( i >= j )

          #p " j #{j}"

          if( i % j == 0)

            divisors.push(j)
            # p " divisors #{divisors}"
          end #if

          j += 1
        end # while

        if( divisors.length == 2 ) # prime should have 1 and itself as divisors
          array.push(i)
          # p "#{i} is pushed"
        end

        divisors.clear
        # p divisors

        # END of extra check
        #
        # extra check - if i has more than 2 divisors

      end # if (prime numbers cannot be even)

    end # if outter most

    i += 1
  end # while

  p array
  return array

end # def

#
# Tests
#
#

# prime_num_gen( 20 ) # [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71]
# https://en.wikipedia.org/wiki/Prime_number

#
# Should all print true
#
puts("\nTests for nth_prime()")
puts("")
    puts('nth_prime(1) == 2: ' + (nth_prime(1) == 3).to_s)
    puts('nth_prime(2) == 5: ' + (nth_prime(2) == 5).to_s)
    puts('nth_prime(3) == 7: ' + (nth_prime(3) == 7).to_s)
    puts('nth_prime(4) == 11: ' + (nth_prime(4) == 11).to_s)
    puts('nth_prime(5) == 13: ' + (nth_prime(5) == 13).to_s)
puts("")
