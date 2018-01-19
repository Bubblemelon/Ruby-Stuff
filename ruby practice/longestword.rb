# A method that takes in a string.
#
# Returns the longest word in the string.
# Assumes that the string contains only letters and
# spaces.
#


#
# Using the ternary operator:
#
# if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this

def longest_word(sentence)

  array = sentence.split(" ")
  i = 0

  if( array.length() == 1 )
    return array[0]
  end

  while( array.length - 1 > i )

    # array[i].length is valid because it is a string

    temp = array[i].length > array[i+1].length ? array[i] : array[i+1]
    i += 1

  end

  # puts(temp)

  return temp
end

#
# Without using the ternary operator
#

def longest_word2(sentence)

  words_array = sentence.split(" ")

  longest_word = nil # to store a string

  index = 0
  while words.length > index

    current_word = words[index]

    if longest_word == nil
      longest_word = current_word

    elsif longest_word.length < current_word.length  # comparing individual string length
      longest_word = current_word

    end

    index += 1 # increment
  end

  return longest_word
end


# Tests ( should all print true )

puts("\nTests for longest_word()")

puts()

    puts(
      'longest_word("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )

puts()

puts("\nTests for longest_word2()")

puts()

    puts(
      'longest_word2("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word2("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word2("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )

puts()
