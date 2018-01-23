# think of solution before coding straight away

# some test functionss

#
#
#
def looping_by_multi_2( num )

  result = 1

  while( result < num )
    result *= 2
    puts( result )
  end

end


#
#
#
def modulo_sample( num )

  puts( num % 2 )

end

#
# pp - pretty print
#
# https://stackoverflow.com/questions/15784503/ruby-method-to-print-and-neat-an-array
#
require 'pp'

pp %w( foo bar baz ) # for complex objects
# output ["foo", "bar", "baz"]
#
# puts( array.inspect ) # prints out like this [a,b,c]
#
# p array # == puts( array.inspect ) "debugging tool !"


#
# until loop
#
puts("Input a whole number")
x = gets.chomp.to_i

until x <= 0 # does loop unitl it becomes true!  replace "=" with "<=" to not include zero as puts() output
  puts x
  x -= 1
end

puts "Done!"


#
# Bubble sort pattern
#

# one iteration of the inner while loop -- refer to third_great() 

5 6 2 9 7 1
6 5 2 9 7 1


#
# TESTS
#
looping_by_multi_2( 78 )
modulo_sample(78)
