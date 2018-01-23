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

# Using a method from a different ruby file
# https://stackoverflow.com/questions/8116079/how-to-reference-a-method-in-another-ruby-code-file
#
# require_relative 'filename'
# classes, global variables, modules etc will be available from filename.rb

require_relative 'randnumarray'

def greatest( array )

  i = 0

 chosen = array[i] # start off with the first element as current element

  while( array.length - 1 > i )

    puts( "comparing #{chosen} with #{array[i+1]}" )

    # replace current element only if it's next on the right is larger otherwise keep
    chosen = chosen > array[i+1] ? chosen : array[i+1]

    puts( "chosen #{chosen}" )

    i += 1

  end

  return chosen

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

    puts( "greatest( random_numbers_Gen_4_array(10,1,20) ) -> #{ greatest( random_numbers_Gen_4_array(10,1,100) ) }" )
puts("")
