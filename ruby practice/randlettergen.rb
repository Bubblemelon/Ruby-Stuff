# Reference:
#
# about random numbers & letters
# http://www.rubyguides.com/2015/03/ruby-random/
#

# About " rand_lowercase_letters_gen( n ) "
# Generates random lower case letters from a to z, stored in an array
# returns an array of size n
#

# http://ruby-doc.org/core-2.2.0/Array.html#class-Array-label-Example+Usage
# An array can also be created by using the Array() method
# provided by Kernel
# which tries to call to_ary, then to_a on its argument.
#
# difference between to_ary & to_a :
# https://stackoverflow.com/questions/9467395/whats-the-difference-between-to-a-and-to-ary
#
#
#
def rand_lowercase_letters_gen( n )

  a_z = Array('a'..'z')
  # puts( a_z.inspect )
  # output:
  # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  # generate the return array
  # calling Array.new() with a block: initialize array of size n with values within the block
  # array = Array.new(n) { a_z.sample } # add .join to block e.g. { a_z.sample }.join to form a string
  # http://www.rubyguides.com/2015/03/ruby-random/
  array = Array.new(n) { a_z.sample() }

  # sample : https://ruby-doc.org/core-1.9.3/Array.html#method-i-sample
  # Chooses a random element or n random elements from the array.
  # If rng (a function) is given, it will be used as the random number generator.

  # puts(array.inspect)
  return array

end

# test - remember to comment out when this is required from a different file

# rand_lowercase_letters_gen( 2 )
