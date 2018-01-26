require_relative 'lettercount'
require_relative 'randlettergen'

#
# instance variables:
#
@test_array = rand_lowercase_letters_gen( 5 ) # from randlettergen.rb
# p @test_array

@test_hash = hash_letter_freq( @test_array ) # from lettercount.rb


# A method that counts the number of letters that repeat ( not its frequency )
#
# Takes a hash with letters as keys and its frequency as values
#
# Returns an integer with the number of letters that has more than 1 frequency
def repeatinglettersnumber( hash )

  p hash

  counter = 0

  hash.each do |key,value|

    if( value > 1 )

      counter += 1

    end # if

  end # loop

  p "Number of repeating letters are #{counter}"
  return counter

end # def


# Takes a string and returns the number of repeating letters
#
# Did not look over assumptions i.e. test cases may not be enough
#
#
def num_repeated_letters( s )

  array = s.split("")
  p array

  i = 0

  counter = 0

  while ( array.length > i )

    j = i + 1
    popped = false

    while ( array.length > j )

      if( array[i] == array[j] )

        array.delete_at( j )

        if( !popped )

        counter += 1

        popped = true

        end # if -- inner

        #p "array.length #{array.length}"
        #p array

      end # if

       j += 1
    end # while

    i += 1
  end # while - outter

  p "counter #{counter}"
  return counter

end # def


# tests
#


# repeatinglettersnumber( {"w"=>5, "v"=>1, "t"=>1, "a"=>3, "y"=>13} )


# string_splitter -- takes a string and returns an array
# hash_letter_freq -- takes an array and returns a hash

# should return all true
#
#
# puts("\nTests for #repeatinglettersnumber()")
# puts("")
#     puts('repeatinglettersnumber( hash_letter_freq(string_splitter("abdbc")) ) == 1: ' + (repeatinglettersnumber( hash_letter_freq(string_splitter("abdbc")) ) == 1).to_s)
#     # one character is repeated
#     puts('repeatinglettersnumber( hash_letter_freq(string_splitter("aaa")) ) == 1: ' + (repeatinglettersnumber(  hash_letter_freq(string_splitter("aaa")) ) == 1).to_s)
#     puts('repeatinglettersnumber( hash_letter_freq(string_splitter("abab")) ) == 2: ' + (repeatinglettersnumber( hash_letter_freq(string_splitter("abab")) ) == 2).to_s)
#     puts('repeatinglettersnumber( hash_letter_freq(string_splitter("cadac")) ) == 2: ' + (repeatinglettersnumber( hash_letter_freq(string_splitter("cadac")) ) == 2).to_s)
#     puts('repeatinglettersnumber( hash_letter_freq(string_splitter("abcde")) ) == 0: ' + (repeatinglettersnumber( hash_letter_freq(string_splitter("abcde")) ) == 0).to_s)
# puts("")
#
#


# num_repeated_letters( "abdbcb" )
# num_repeated_letters( "aaa" )
# num_repeated_letters( "abab" )
# num_repeated_letters( "cadac" )
# num_repeated_letters( "abcde" )
num_repeated_letters( "daaadddbhhhcdeeeefgh" )

# should return all true
#
#
puts("\nTests for num_repeated_letters()")
puts("")
    puts('num_repeated_letters("abdbc") == 1: ' + (num_repeated_letters('abdbc') == 1).to_s)
    # one character is repeated
    puts('num_repeated_letters("aaa") == 1: ' + (num_repeated_letters('aaa') == 1).to_s)
    puts('num_repeated_letters("abab") == 2: ' + (num_repeated_letters('abab') == 2).to_s)
    puts('num_repeated_letters("cadac") == 2: ' + (num_repeated_letters('cadac') == 2).to_s)
    puts('num_repeated_letters("abcde") == 0: ' + (num_repeated_letters('abcde') == 0).to_s)
puts("")
