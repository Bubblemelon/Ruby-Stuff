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
# sample() method
# https://ruby-doc.org/core-1.9.3/Array.html#method-i-sample
#
require_relative 'randnumarray'

something = []
something = random_numbers_Gen_4_array( 10, 3, 77 )

other_thing = something.sample(2) # samples 2 elements from something and adds to hi

# Notes on sample(n, random: rng) → new_ary
#
# rng is ruby's Random Number Generator, replace it with your own method/function
# e.g. sample.(n , random: your_method)
#
# Link to usage: 
# https://stackoverflow.com/questions/8567917/how-to-use-arraysamplen-random-rng-syntax

p other_thing




#
# TESTS
#
looping_by_multi_2( 78 )
modulo_sample(78)
