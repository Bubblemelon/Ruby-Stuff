# About caesar_cipher(offset, string)
#
# A method that takes in an integer `offset` and a string.
# Returns a new string, where each letter is shifted by `offset`.
#
# Assumes only lowercase letters and spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# Use `%` modulo operation to handle wrapping of "z" to the front of the alphabet.
#
# String's `ord` method:
# `ord` converts a letter to an ASCII number code.
#
# Integer's `chr` method:
# `chr` converts an ASCII number code to a letter.
#
# ASCII printable characters chart:
#
# http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# letter 'a' has code 97, 'b' has code 98 --> 'z' has code 122.

#
# May not have enough test cases to verify the correctness of this algorithm
#
#
def caesar_cipher(offset, string)

  result = ""

  array = string.split("")

  i = 0

  while array.length > i

    ascii = array[i].ord
    p ascii

    if( array[i] != " ")  # keep space the same, do not add offset
      ascii += offset
    end

    if ascii >= 122 # IMPORTANT

      # look at note2self
      #
      back_round_from_a = ( ascii - "a".ord ) % 26
      #
      # look at note2self

      ascii = back_round_from_a + "a".ord
      # if x, i.e. x = 199 & offset = 3 so, total 122, then back_round_from_a = 0
      # Therefor, back_round_from_a +  "a".ord  === 0 + 97 => a

    end

    letter = ascii.chr
    p letter

    result += letter

    i += 1
  end # while

  p result

  return result

end

# Tests
#
# caesar_cipher(3, "abc")
# caesar_cipher(3, 'abc xyz')

# Tests should print true
#
puts("\nTests for caesar_cipher()")
puts("")
    puts(
      'caesar_cipher(3, "abc") == "def": ' +
      (caesar_cipher(3, 'abc') == 'def').to_s
    )
    puts(
      'caesar_cipher(3, "abc xyz") == "def abc": ' +
      (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
    )
puts("")
