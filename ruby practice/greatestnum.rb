# returns the greatest number in array
#
# using while loop -
#
# Maybe easier with for loops: https://stackoverflow.com/questions/2032875/syntax-for-a-for-loop-in-ruby
#
#   array.each_with_index do |element,index|
#    element.do_stuff(index)
#   end
#
def greatest( array )

  i = 0

  last_index = array.length() - 1

  while( array.length - 1 >  i ) # minus one to avoid comparing with self i.e. "array[ last_index ]"

    puts( "comparing #{array[ last_index ]} with #{array[i]}" )

    if( array[ last_index ] > array[i] )
      bigger = array[ last_index ]
       puts("choosen #{bigger}")
    end

    if( array[ last_index ] < array[i] )
      bigger = array[i]
       puts("choosen #{bigger}")
    end

    i += 1
  end # while

  puts("biggest: #{bigger}")
  return bigger

end # def

# Test - should print all true

puts("\nTests for greatest()")
puts("")
    puts(
      'greatest([5, 3, 7]) == 7: ' +
      (greatest([5, 3, 7]) == 7).to_s
    )
    puts(
      'greatest([5, 3, 7, 4]) == 7: ' +
      (greatest([5, 3, 7, 4]) == 7).to_s
    )
    puts(
      'greatest([2, 3, 7, 4]) == 7: ' +
      (greatest([2, 3, 7, 4]) == 7).to_s
    )
puts("")
