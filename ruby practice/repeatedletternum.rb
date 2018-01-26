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
#
def num_repeated_letters( s )

  # s_array = s.split("")
  # p s_array
  # # ["a", "b", "d", "b", "f", "f", "f"]
  #
  # i = 0
  #
  # new_limit = 0
  #
  # while( s_array.length() > i )
  #
  #   j = i + 1
  #
  #   p s_array
  #
  #   while( s_array.length() + new_limit > j )
  #
  #     p "s_array[#{i}] #{s_array[i]} | s_array[#{j}] #{s_array[j]}"
  #     if( s_array[i] == s_array[j] )
  #
  #       # a reoccurance of another letter
  #
  #
  #
  #       s_array.delete_at( j )
  #
  #       p "s_array.length #{s_array.length}"
  #
  #       # new_limit += 1
  #
  #       p s_array
  #
  #       j -= 1
  #
  #     end #if
  #
  #     j += 1
  #   end # inner while
  #
  #   i += 1
  # end # while
  #
  # return s_array

  # IMPROVEMENT
  #
  # Use pop()
  #


end


# tests
#
# should return all true

# repeatinglettersnumber( {"w"=>5, "v"=>1, "t"=>1, "a"=>3, "y"=>13} )


# string_splitter -- takes a string and returns an array
# hash_letter_freq -- takes an array and returns a hash
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

num_repeated_letters( "abdbefffccfddee" )

# puts("\nTests for num_repeated_letters()")
# puts("")
#     puts('num_repeated_letters("abdbc") == 1: ' + (num_repeated_letters('abdbc') == 1).to_s)
#     # one character is repeated
#     puts('num_repeated_letters("aaa") == 1: ' + (num_repeated_letters('aaa') == 1).to_s)
#     puts('num_repeated_letters("abab") == 2: ' + (num_repeated_letters('abab') == 2).to_s)
#     puts('num_repeated_letters("cadac") == 2: ' + (num_repeated_letters('cadac') == 2).to_s)
#     puts('num_repeated_letters("abcde") == 0: ' + (num_repeated_letters('abcde') == 0).to_s)
# puts("")
