# think of solution before coding straight away

# some test functionss


# Markdown:
#
# newline: hit 'space' twice and enter at the end of a sentence.

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


# About pp, p, print and puts
#
# pp - pretty print
#
# https://stackoverflow.com/questions/15784503/ruby-method-to-print-and-neat-an-array
#
require 'pp'

pp %w( foo bar baz ) # for complex objects
# output ["foo", "bar", "baz"]

# puts( array.inspect ) # prints out like this [a,b,c]
#
# p array # == puts( array.inspect ) "debugging tool !" ( puts + inspect() )

foo = 0
p foo # shows 0 - refering to the code above it
p "foo" # actualy shows qoutes e.g. "foo"

print foo # shows 0 - refering to foo = 0
print "foo" # DOES NOT SHOW QOUTES --- this is why p is used for debugging i.e. it uses inspect()

puts foo # shows 0 - refering to foo = 0 -- stuck next to output from print "foo" as print does not "print" does not print newline
puts "foo" # DOES NOT SHOW QOUTES --- this is why p is used for debugging i.e. it uses inspect()
#
# source: https://stackoverflow.com/questions/1255324/p-vs-puts-in-ruby

# Difference between puts and print
#
# puts - generates a new line after printing while print does not
# Look at the difference here: https://stackoverflow.com/questions/5018633/what-is-the-difference-between-print-and-puts

#
#
# end of About pp, p, print and puts



# Countdown
# until loop
#
def countdown()
  puts()
  puts("Initiating coutdown: ")
  puts("Input a whole number")
  x = gets.chomp.to_i

  until x <= 0 # does loop unitl it becomes true!  replace "=" with "<=" to not include zero as puts() output
    puts x
    x -= 1
  end

  puts "Done!"
end


#
# sample() method
# https://ruby-doc.org/core-1.9.3/Array.html#method-i-sample
#
require_relative 'randnumarray'

something = []
something = random_numbers_Gen_4_array( 10, 3, 77 )

puts("Sampling two random elements from the randomly generated array:")
other_thing = something.sample(2) # samples 2 elements from something and adds to other_thing

# Notes on sample(n, random: rng) → new_ary
#
# rng is ruby's Random Number Generator, replace it with your own method/function
# e.g. sample.(n , random: your_method)
#
# Link to usage:
# https://stackoverflow.com/questions/8567917/how-to-use-arraysamplen-random-rng-syntax

p other_thing


#
# Returns max hash key-value pair depending on the value of hash elements
#
# https://stackoverflow.com/questions/6040494/how-to-find-the-key-of-the-largest-value-hash
def largest_hash_key(hash)
  hash.max_by{|k,v| v}
end

# Deference between "" and '' == both evaluates as a string object
#
# "" allows string interpollation + escape sequences i.e. '\n' ( ''  does not allow for both )
#
# https://stackoverflow.com/questions/6395288/double-vs-single-quotes
# Questino on performance: https://stackoverflow.com/questions/1836467/is-there-a-performance-gain-in-using-single-quotes-vs-double-quotes-in-ruby


# Difference between to_s and to_str
#
# to_s returns a string representation of an object (explicit conversion)
# to_str is actually stating that the object behaves like a string! (implicit conversion)
#
# Article link: http://marcgg.com/blog/2017/01/23/ruby-to-s-to-str/


def wrapping_round( offset )

  # z == 122 ascii
  # 26 letters
  # a == 97 ascii
  # offset the amount to change the letter to
  # e.g. offset = 3 and letter = a so, 97 + 3 = 100 == d

  number = ( 122 - 97 + offset ) % 26

  p number

end


#
# TESTS
#
# looping_by_multi_2( 78 )
modulo_sample(1)
# puts( largest_hash_key( {"a"=>3, "r"=>1, "b"=>1, "c"=>2, "d"=>1} ) )

# wrapping_round( 1 )
