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
# TESTS
#
looping_by_multi_2( 78 )
modulo_sample(78)
