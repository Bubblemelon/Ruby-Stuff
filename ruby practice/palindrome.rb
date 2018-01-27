# A method that takes a string and returns true if it is a
# palindrome.
#
# A palindrome is a string that is the same whether written
# backward or forward.
#
# Assumes that there are no spaces in the string and is only lowercase
#

#
# long method, involves:
#
# reversing the two strings, and then comparing their characters one by one
#
def palindrome?(string)

  i = 0
  rev_array = []

  # puting a string into an array
  # remember to give split the parameter !!!
  # a b c
  array = string.split("")
  # puts(array)


  # reversing the element order in the array
  # c b a
  # don't use array.length
  # because array.length is getting smaller as it is being popped
  while( string.length > i )

    rev_array.push(array.pop())
    i += 1

  end

  # puts(rev_array)

  # from array to strings again
  # string = array.join() # don't do this! ( empty since popped all!)

  gnirts = rev_array.join()

  counter = 0
  j = 0

  # conditional check
  while ( string.length() > 0 )

    if( string[i] == gnirts[i] )
      counter += 1

      if( counter == string.length )
        return true
      end # if

    end # if

    j += 1
  end # while

  return false

end

#
# Checks if at least one character does not match at the same index of both strings
#
# The second comparing string is checked by counting backwards from the first !
#
def palindrome2?( string )

  i = 0

  while string.length > i

    # puts( string[i] )
    # puts( string[ (string.length - 1) - i  ] )
    # puts( string[i] != string[ (string.length - 1) - i ] .to_s  )

    if( string[i] != string[ (string.length - 1) - i ] )
      return false
    end

    i += 1
  end # while

  return true

end # def


# Tests ( should all print true )
#
#
# Note if false == false, then this results are true!!!

# puts("\nTests for palindrome?()")
# puts()
#     puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
#     puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
#     puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
# puts()
#
# # palindrome?("abc")
#
# puts("\nTests for palindrome2?()")
# puts()
#     puts('palindrome2?("abc") == false: ' + (palindrome2?('abc') == false).to_s)
#     puts('palindrome2?("abcba") == true: ' + (palindrome2?('abcba') == true).to_s)
#     puts('palindrome2?("z") == true: ' + (palindrome2?('z') == true).to_s)
# puts()
#
# palindrome2?("abc")
