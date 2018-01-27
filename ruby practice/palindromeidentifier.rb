# Substrings:
# consecutive sequences of letters contained inside the string.
#
#
# An entire string may be a palindrome.
#
# `slice(start_index, length)` method:
# Returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"

# A method that takes in a string of lowercase letters
#
# Assuming no uppercase letters, and no spaces.
#
#  Calls palindrome?() from palendrome.rb
#
# Returns the longest string of letters that is a palindrome

require_relative 'palindrome'

def longest_palindrome(string)

  pal_store = [] # stores all possible palindromes

  result = "" # contains the longest palindrome String

  # a b c b d
  #   - - -    Slice this way
  # Takes into account, of the whole string i.e. a b c b d
  #                                              - - - - -
  i = 0
  j = 0
  while( string.length / 2 > i ) # string.length divide by 2 == amount of times to slice

    possible_pal = string.slice(i, string.length - j)

    # p possible_pal

    if( palindrome2?( possible_pal ) )
      pal_store.push( possible_pal )
    end

    j += 2
    i += 1
  end # while

  # p pal_store

  # a b c b d
  # - - - -    Slice this way

  k = 2
  while( string.length > k )

    possible_pal = string.slice(0, k)

    # p possible_pal

    if( palindrome2?( possible_pal ) )
      pal_store.push( possible_pal )
    end

    k += 1
  end #while

  # p pal_store

  # a b c b d
  #   - - - -  Slice this way

  l = 1
  while( string.length - 1 > l )

    possible_pal = string.slice(l, string.length)

    # p possible_pal

    if( palindrome2?( possible_pal ) )
      pal_store.push( possible_pal )
    end

    l += 1
  end #while

  # p pal_store

  # finding the longest palindrome
  #
  #
  if( pal_store.length == 1 )
    result = pal_store[0]
    p result
    return result
  else

    m = 0
    while( pal_store.length > m )

      if( pal_store[m+1] != nil )

        pal_store[m].length > pal_store[m+1].length ? result = pal_store[m] : result = pal_store[m+1]

      end # inner - if

      m += 1
    end # while

  end # if

  p result
  return result

end #def

# Tests

# Should return all true

# longest_palindrome( "abba" )
# longest_palindrome( "abcbd" )
# longest_palindrome( "abcbdeffe" )

puts("\nTests for longest_palindrome")
puts("")
    puts(
      'longest_palindrome("abcbd") == "bcb": ' +
      (longest_palindrome('abcbd') == 'bcb').to_s
    )
    puts(
      'longest_palindrome("abba") == "abba": ' +
      (longest_palindrome('abba') == 'abba').to_s
    )
    puts(
      'longest_palindrome("abcbdeffe") == "effe": ' +
      (longest_palindrome('abcbdeffe') == 'effe').to_s
    )
puts("")
