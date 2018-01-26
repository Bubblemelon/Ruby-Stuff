# A method that takes in a string and an array of the string's new index positions
#
# Returns a string containing letters corresponding to the new positions.
#

def string_scrambler(string, positions_array)

  result = []

  i = 0
  while( string.length > i )

    result[ positions_array[i] ] = string[i]

    i += 1
  end

  result = result.join()

  p result
  return result

end

# TESTS
#
# should all print true

puts("\nTests for string_scrambler()")
puts("")
    puts(
      'string_scrambler("abcd", [3, 1, 2, 0]) == "dbca": ' +
      (string_scrambler("abcd", [3, 1, 2, 0]) == "dbca").to_s
    )
    puts(
      'string_scrambler("markov", [5, 3, 1, 4, 2, 0]) == "vroakm"): ' +
      (string_scrambler("markov", [5, 3, 1, 4, 2, 0]) == "vroakm").to_s
    )

    puts(
      'string_scrambler("apple", [2,0,3,1,4]) == "plape"): ' +
      (string_scrambler("apple", [2,0,3,1,4]) == "plape").to_s
    )
puts("")

# Another way of doing this but will yeild different results:
#
# result = ""
# result = result + string[positions[i]]
# markov", [5, 3, 1, 4, 2, 0]) == "vkaorm
#
# 5 == string's number 5 position == v
# 3 == string's number 3 position == k
# 1 == string's number 1 position == a
# ...
# ...
# so sequentially construct the "string result" based on the given array
