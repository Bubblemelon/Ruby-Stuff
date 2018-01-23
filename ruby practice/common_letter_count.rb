# Takes an array of single randomised letters
#
# Using a hash, have the letter as the key
# and it's frequency (the number of repeats) as its value
#
def hash_letter_freq(string)
end

#
# Returns the letter of the highest frequency from a given hash
#

def highest_freq_freq( hash )


# tests

# should all print true !

puts("\nTests for #most_common_letter")
puts("")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("")
