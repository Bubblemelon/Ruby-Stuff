#
# Takes an array of numbers
#
# Returns the sum of only odd numbers from that array

def oddnumsum( array )

  sum = 0
  i = 0
  while( array.length > i )

    if( array[i] % 2 != 0 )
      sum += array[i]
    end #if

    i += 1
  end # while

  p sum
  return sum

end # def

oddnumsum( [1,2,3,4,5] ) # 1 + 3 + 5 = 9
oddnumsum( [0,6,4,4] ) # 0
oddnumsum( [1,2,1] ) # 2
