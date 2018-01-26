# A method that finds the greatest common factor of two given numbers i.e.
# num1 and num2
#
# Returns the greatest common factor as an interger
#
def greatest_common_factor( num1, num2)

  gcf = 1 # all numbers share 1 as a common factor

  array1 = [] # stores all factors of num1
  array2 = [] # stores all factors of num2

  common_factors_array = [] # stores common factors of both numbers

  i = 1
  while( num1 >= i ) # putting all factors of num1 into array1

    if( num1 % i == 0 )
      array1.push(i)
    end

    i += 1
  end

  p array1

  j = 1
  while( num2 >= j ) # putting all factors of num2 into array2

    if( num2 % j == 0 )
      array2.push(j)
    end

    j += 1
  end

  p array2


  # START
  # collect all common factors of both numbers

      # num1 > num2 ? limit = num1 : limit = num2
      # k = 0
      # while( limit > k) # use largest num parameter as limit
      # end
      #
      # abandoned the above way of collecting matching elements from array1 and array2

  # take the INTERSECT of array1 and array2
  # source: https://stackoverflow.com/questions/5678108/how-can-i-get-the-intersection-union-and-subset-of-arrays-in-ruby

  common_factors_array = array1 & array2

  p common_factors_array

  # collect all common factors of both numbers
  # END

  # Find the largest number in the array i.e. common_factors_array:
  #
  # ASUMPTION !!!
  #
  # Asumming always the last element of common_factors_array !!!!!

  if( common_factors_array[common_factors_array.length - 1] != nil )
    gcf = common_factors_array[common_factors_array.length - 1]
  end

  p "The common factor of #{num1} and #{num2} is #{gcf}."
  return gcf

end

#
# TESTS
#
greatest_common_factor( 12, 8)

puts("\nTests for greatest_commmon_factor()")
puts("")
    puts(
      'greatest_common_factor(3, 9) == 3: ' +
      (greatest_common_factor(3, 9) == 3).to_s
    )
    puts(
      'greatest_common_factor(16, 24) == 8: ' +
      (greatest_common_factor(16, 24) == 8).to_s
    )
    puts(
      'greatest_common_factor(3, 5) == 1: ' +
      (greatest_common_factor(3, 5) == 1).to_s
    )
puts("")
