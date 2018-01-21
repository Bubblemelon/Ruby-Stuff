# A method that takes an array of numbers.
# If a pair of numbers in the array sums to zero, return the positions of those two numbers (as an array).
#
# If no pair of numbers sums to zero, return `nil`.
#

#
# counts from the back of the array e.g. nums !
#
# This is set to find the differences ( minus ) of two numbers

def diff_zero( nums )

  i = 0

  from_back_of_array = nums.length() - 1

  # puts("from_back_of_array #{from_back_of_array}")

  indices = []

  up_one = 1

  param_length = nums.length() - 1

  # puts("param_length #{param_length}")


  while( nums.length() > i ) # keeps track of the position ( current element )

    # puts( "start" )

    while( param_length != 0 ) # keeps track of the number of elements so to compare with the current element

      # puts( "nums[ from_back_of_array ] #{nums[ from_back_of_array ]}" )

      # puts("nums[ from_back_of_array - up_one ] #{nums[ from_back_of_array - up_one ]}")

      # puts("from_back_of_array ] - nums[ from_back_of_array - up_one ] #{ nums[ from_back_of_array ] - nums[ from_back_of_array - up_one ] }")

      if( nums[ from_back_of_array ] - nums[ from_back_of_array - up_one ] == 0 )

        # Change above "-" ( minus ) to "+" for sum of two numbers == 0 !!!

        indices.unshift(  from_back_of_array )
        indices.unshift( from_back_of_array - up_one  )

        # the indices are put into the array by accending order from left to right
        # via unshift !!!

        # puts( indices )
        return indices

      else

        # puts( "no zero" )

        up_one += 1

        # puts("up_one #{up_one} ")

        param_length -= 1

        # puts("param_length #{param_length}")

      end # if

    end # while

    from_back_of_array -= 1 # since no zero found, then move to the next element on the left from the current

    param_length = from_back_of_array # the remaining times to iterate within the smaller while

    # puts("param_length #{param_length}")

    up_one = 1 # the left element from the current

    # puts( "end" )

    i += 1

  end # large - while

  return nil

end #def


#
# counts from fornt to back of array !!!
#
#
def sum_zero(nums)

  index = 0

  while nums.length > index  # keep track of position in array "current element"

    index2 = index + 1 # the next index from the current on the right

    while nums.length > index2 # keeps the number of times to compare with current element

      # sums of two numbers == zeo
      if nums[index] + nums[index2] == 0

        # smaller than larger index
        return [index, index2]
      end

      index2 += 1

    end # inner - while

    index += 1
  end

  return nil
end



# Tests - should print true for all

puts("\nTests for diff_zero()")
puts()
    puts(
      'diff_zero([1, 3, 5, -3]) == nil: ' + (diff_zero([1, 3, 5, -3]) == nil ).to_s
    )
    puts(
      'diff_zero([1, 3, 5]) == nil: ' + (diff_zero([1, 3, 5]) == nil).to_s
    )
    puts(
      'diff_zero([1, 3, 5, 8, 5]) == [2, 4]: ' + (diff_zero([1, 3, 5, 8, 5]) == [2, 4]).to_s
    )
    puts(
      'diff_zero([1, -3, 7, -3, 5]) == [1, 3]: ' + (diff_zero([1, -3, 7, -3, 5]) == [1, 3]).to_s
    )
puts()


puts("\nTests for sum_zero()")
puts()
    puts(
      'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (sum_zero([1, 3, 5, -3]) == [1, 3]).to_s
    )
    puts(
      'two_sum([1, 3, 5]) == nil: ' + (sum_zero([1, 3, 5]) == nil).to_s
    )
puts()
