#
# Takes an array of integers
# returns true if three consecutive elements sums up to 7
#



# Ruby loops
#
# https://www.tutorialspoint.com/ruby/ruby_loops.htm

# array iteration
#
# https://stackoverflow.com/questions/310634/what-is-the-right-way-to-iterate-through-an-array-in-ruby


# Using Ruby next
# https://stackoverflow.com/questions/4010039/equivalent-of-continue-in-ruby



# IMPROVEMENT
#
# Use array iteration instead of while loop


# IMPORTANT
#
# When doing next inside a while loop:
# Must increment i.e. i += 1
# Then have next function on the next line


def three_7s?( array ) #3,4,3,4

  sum = 0
  i = 0
  while ( array.length > i )

    p "i #{i}"

    if( array[i] < 7 && array[i+1] != nil )
      sum += array[i]
      p sum

      if( ( array[ i+1 ] + sum ) < 7  )
        sum += array[i+1]
        p sum

        if( (array[ i+2 ] + sum) == 7 )
          sum += array[i+2]
          p sum
          return true
        else
          p "sum #{sum} + #{array[i+2]} = #{array[i+2] + sum}"
          sum = 0
          p sum
          i += 1
          next
        end # 3rf if

      else
        p "sum #{sum} + #{array[i+1]} = #{array[i+1] + sum}"
        sum = 0
        p sum
        i += 1 # move on to next iteration
        next
      end # 2nd if

    else # 1st if

      if( i == array.length - 1 )
        p sum
        return false
      else
        i += 1 # first element considered is > 7
        next
      end

    end # if

    i += 1
  end #while

  p sum
  return false

end # def


#
# TEST
#

puts(three_7s?( [1,2,4] )) #true
# puts(three_7s?( [7,7,7,7] )) #false

# puts(three_7s?( [3,4,3,4] )) #false

# puts(three_7s?( [2,1,5,1,0] )) #true


# puts(three_7s?( [0,-2,1,8] )) #true
