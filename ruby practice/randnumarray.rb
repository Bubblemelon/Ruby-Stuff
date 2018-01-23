# Notes on Random:
#
# Kernel module:
#
# rand(max=0) → number
# If called without an argument, or if max.to_i.abs == 0,
# rand returns a pseudo-random floating point number between 0.0 and 1.0, including 0.0 and excluding 1.0.
# http://ruby-doc.org/core-2.1.3/Kernel.html#method-i-rand
#
# rand(100) → output: greater & equal to zero but less than 100 ( excludes max )
#
#
# Random interface:
#
# Allows for generating a new seed - to set intial state!
# Allows for checking if two random numbers are of the same initial state
#
# e.g.
# prng1 = Random.new(1234)
# prng2 = Random.new(1234)
# prng1 == prng2 # => true



# Generates random (whole) numbers in an array
#
#
# length : length of array
# min : min value of random numbers
# max : max value of random numbers
#
def random_numbers_Gen_4_array( length, min, max )

  array = []
  i = 0

  while( length > i )

    array.push( rand(min..max) )

    i += 1
  end

  puts( array.inspect ) # prints out like this [a,b,c]

  p array # == puts( array.inspect ) "debugging tool !"

  return array


end

random_numbers_Gen_4_array( 10, 0, 10)
