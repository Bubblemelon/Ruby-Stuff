# A method that takes a string and returns the number of vowels
# of that string.
#
# Assuming that all the letters are lower cased.
#
#
# Notes on vowels:
#
# a e i o u
# all else are consonants
#

def vowel_count (string)

  vowel_number = 0
  i = 0

  while( string.length() > i )

    if( (string[i] == "a") || (string[i] == "e") || (string[i] == "i") || (string[i] == "o") || (string[i] == "u") )
      vowel_number += 1
    end

    i += 1
  end

  return vowel_number
end

# Tests ( should all print true )


puts("\nTests for #vowel_count")
puts()
    puts('vowel_count("abcd") == 1: ' + (vowel_count('abcd') == 1).to_s)
    puts('vowel_count("color") == 2: ' + (vowel_count('color') == 2).to_s)
    puts('vowel_count("colour") == 3: ' + (vowel_count('colour') == 3).to_s)
    puts('vowel_count("cecilia") == 4: ' + (vowel_count('cecilia') == 4).to_s)
puts()
