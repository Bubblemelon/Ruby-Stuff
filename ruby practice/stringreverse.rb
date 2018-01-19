# A method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# This does Not implement String's reverse method.
# e.g. .reverse!()
#

# ARRAYS + strings
#
# LIFO
# push  - push to the back of array
# pop   - pop the last element of array

# FIFO
# unshift - unshift to the front of array (add)
# shift   - shifts the front of array (remove)

#
# starting from the back of the string i.e. string.length() - 1
#
def reverse(string)

  temp = ""
  i = string.length() - 1

  while i >= 0
    temp += string[i]
    i -= 1
  end
  puts()
  puts( "Reverse string output: "  + temp )


  return temp
end

#
#
# using pop() & push() = can't use these methods on a string !!!
#
def reverse2(string)

  temp = []
  i = 0

  # from string to become an array
  array = string.split("")

  while string.length > i

    temp.push( array.pop() )
    i += 1

  end
  # puts( temp )
  # becomes a string again
  temp = temp.join()
  puts()
  puts( "Reverse string output: "  + temp )

  return temp
end



# Tests ( should all print true )

puts("\nTests for reverse")

puts(
      'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
    )

puts(
      'reverse("a") == "a": ' + (reverse("a") == "a").to_s
    )

puts(
      'reverse("") == "": ' + (reverse("") == "").to_s
    )

puts("===============================================")


puts("\nTests for reverse2")

puts(
      'reverse2("abc") == "cba": ' + (reverse2("abc") == "cba").to_s
    )

puts(
      'reverse2("a") == "a": ' + (reverse2("a") == "a").to_s
    )

puts(
      'reverse2("") == "": ' + (reverse2("") == "").to_s
    )

puts("===============================================")
