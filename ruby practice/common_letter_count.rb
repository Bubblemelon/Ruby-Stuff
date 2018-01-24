require_relative 'randlettergen'

# ruby variable scope
# http://www.techotopia.com/index.php/Ruby_Variable_Scope
#
# $ global
# @ instance
# a-z local
# A-Z CONSTANT
# @@ class

# instance of common_letter_count.rb
# an array of randomised letters -- using method from randlettergen.rb
@letters = rand_lowercase_letters_gen( 10 )

# hash_letter_freq()
# Takes an array of single randomised letters
#
# Using a hash, have the letter as the key
# and it's frequency (the number of repeats) as its value
#
# returns a hash
def hash_letter_freq( array )

  i = 0 # keeps track of outter loop
  hash = Hash.new()

  while( array.length > i )

    count = 1

    i2 = 1 + i # keeps track of inner while loop

    while( array.length > i2 ) # this will never check the

      # puts("i #{i} | i2 #{i2}") -- check if iteration is made right

      if( array[i] == array[i2] )
        count += 1
      end

      i2 += 1
    end # inner - while

    # alternative cond: hash.has_key?("#{array[i]}") http://ruby-doc.org/core-1.9.3/Hash.html#method-i-has_key-3F
    if( hash["#{array[i]}"] == nil ) # checks if key exists
      hash["#{array[i]}"] = count
    end

    # for the last element in the array -- skipped by i2
    if( i2 == array.length )
      if( hash["#{array[i]}"] == nil )
        hash["#{array[i]}"] = 1
      end
    end


    i += 1
  end # while -outter

  puts( hash )
  return hash

end # def


#
# Returns the letter of the highest frequency from a given hash
#
# Using:
#
# Outputs value of key and its value
# Hash.each {|key, value| puts "#{key} is #{value}" }
# http://ruby-doc.org/core-1.9.3/Hash.html#method-i-each
#
# Alternative:
#
# Outputs the maximum value from keys and its key as well
# Hash.max_by{|key,value| value}  -- look at note2self.rb
# https://ruby-doc.org/core-2.5.0/Enumerable.html#method-i-max_by
# https://stackoverflow.com/questions/6040494/how-to-find-the-key-of-the-largest-value-hash
#
#
# Interesting: (useful)
#
# Hash to Array -- takes values of keys and stores in array
# Hash.values()
# http://ruby-doc.org/core-1.9.3/Hash.html#method-i-values



def highest_letter_freq( hash )


  most_common_letter = nil
  letter_freq = 0

  hash.each do |key,value|

    # puts("value #{ value }")

    if( value > letter_freq )

      most_common_letter = key
      letter_freq = value

      # puts( most_common_letter )
      # puts( letter_freq )

    end


  end # do

  array = []

  array.push( most_common_letter )
  array.push( letter_freq )

  p array
  return array


end #def

#
# Splits a string e.g. "dog" into "d" "o" "g" and places it in an array
#
# returns an array
#
#  Calls String.split() -- not my own implementation
#
def string_splitter( string )

  array = []
  array = string.split("")
  p array
  return array

end

# tests


# hash_letter_freq( @letters )

# hash_letter_freq( [ "a","r","a","a","b","c","c","d" ] ) #length 7

# highest_letter_freq( hash_letter_freq( [ "a","r","a","a","b","c","c","d" ] ) )

# highest_letter_freq( {"a"=>3, "r"=>1, "b"=>1, "f"=>4, "c"=>2, "d"=>1} )

# string_splitter("dog")

# hash_letter_freq( string_splitter("abca") )

# should all print true !

puts("\nTests for highest_letter_freq()")
puts("")
    puts(
      'highest_letter_freq( hash_letter_freq( string_splitter("abca") )  == ["a", 2]: ' +
      ( highest_letter_freq( hash_letter_freq( string_splitter("abca") ) ) == ['a', 2] ).to_s
    )
    puts(
      'highest_letter_freq( hash_letter_freq( string_splitter("abbab") ) == ["b", 3]: ' +
      ( highest_letter_freq( hash_letter_freq( string_splitter("abbab") ) ) == ['b', 3] ) .to_s
    )
puts("")
