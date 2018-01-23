# A method that takes an array of numbers in.
#
# Returns the third greatest number in the array.
#
# Assumes at least three numbers in array.
#

# Using bubble_sort() & random_numbers_Gen_4_array() functions
#
# Remove repeats of the same number < -- made this its own function
# and then return the second index array[2] as third largest counting from index array[0]
#

require_relative 'randnumarray'
require_relative 'bubblesort'


# Removes the repeated numbers in a sorted array from highest to lowest ( left to right )
#
# Returns the removed_repeats array
#
def remove_repeated_nums_in_array( array )

  #
  # Begin removing repeats
  #
  removed_repeats = []

  i = 0
  removed_repeats.push( array[i] )
  # puts( "Initial return array #{removed_repeats.inspect} " )

  current_return_array_element = removed_repeats[i]


  while( array.length - 1 > i )

    # puts( "Comparing #{current_return_array_element} with #{array[i+1]}" )

    if( current_return_array_element != array[i+1] )

      removed_repeats.push( array[i+1] )
      current_return_array_element = removed_repeats[ removed_repeats.length - 1 ] # or simply =  array[i+1]
      # puts( "current_return_array_element #{current_return_array_element}"  )
      # puts( removed_repeats.inspect )

    else


      current_return_array_element = array[i]
      # puts( "current_return_array_element #{current_return_array_element}"  )
    end # if

    i += 1
  end # while

  puts()
  puts( "Removed repeats: #{ removed_repeats.inspect }" )
  puts()
  #
  # End of removing repeats !
  #
  return removed_repeats # array

end


# calls remove_repeated_nums_in_array()  within function
#
# Uses this as a test: randomiseas + sorts an array as parameter
# third_great(   bubble_sort(random_numbers_Gen_4_array(5, 1, 10))    )
#
# returns the 3rd largest element
#
def third_great( array )

  array_without_repeats = remove_repeated_nums_in_array( array )

  #
  # Return the 3rd largest element in array!
  #
  puts("The 3rd largest element in the array is #{array_without_repeats[2]}")
  return array_without_repeats[2]# 3rd largest element in array

end # def



#
# Calls bubble_sort() within this function
#
# - for tests that also don't require a randomised array
# - for tests that do not have repeated numbers
#
def third_great2( array )

  #
  # Calling bubble_sort() on parameter array
  #

  sorted_array = bubble_sort( array )

  return sorted_array[2]


end

def third_great3( array )


  first = nil
  second = nil
  third = nil

  i = 0

  while i < array.length

    current = array[i]

    # compares current element with first , second and third
    if first == nil || current > first
      puts( "#{current} > #{first}" )

      third = second
      puts( "third = #{second}" )
      second = first
      puts( "second = #{first}" )
      first = current
      puts( "first = #{current}" )

    elsif second == nil || current > second

      puts( "#{current} > #{second}" )

      third = second
      puts( "third = #{second}" )
      second = current
      puts( "second = #{current}" )

    elsif third == nil || current > third
      puts( "#{current} > #{third}" )

      third = current
      puts( "third= #{current}" )

    end

    i += 1
  end

  return third

end #def

# Tests

# remove_repeated_nums_in_array( [4,4,4,3,3,3,5,5,5] )

 third_great(   bubble_sort(random_numbers_Gen_4_array(10, 1, 10))    )


# below should all print true

puts("\nTests for third_great2()")
puts("")
    puts(
      'third_great2([5, 3, 7]) == 3: ' +
      (third_great2([5, 3, 7]) == 3).to_s
    )
    puts(
      'third_great2([5, 3, 7, 4]) == 4: ' +
      (third_great2([5, 3, 7, 4]) == 4).to_s
    )
    puts(
      'third_great2([2, 3, 7, 4]) == 3: ' +
      (third_great2([2, 3, 7, 4]) == 3).to_s
    )
puts("")

puts("\nTests for third_great3()")
puts("")
    puts(
      'third_great3([5, 3, 7]) == 3: ' +
      (third_great3([5, 3, 7]) == 3).to_s
    )
    puts(
      'third_great3([5, 3, 7, 4]) == 4: ' +
      (third_great3([5, 3, 7, 4]) == 4).to_s
    )
    puts(
      'third_great3([2, 3, 7, 4]) == 3: ' +
      (third_great3([2, 3, 7, 4]) == 3).to_s
    )
puts("")
