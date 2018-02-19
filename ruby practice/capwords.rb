# Takes a string of lower case words in of a sentence
# and returns the beginning of each word capitalized
#
#
# Some useful methods:
#
# split()
# join()
# upcase()



# Without using join() or split()
#
#
def capwords( string )

  capitalized = ""

  capitalized += string[0].upcase()

  p capitalized

  # assuming no spaces in the beginning of the string
  i = 1
  new_limit = string.length

  while( new_limit > i )

    p "string[i] #{string[i]}"

    if( string[i] !=  nil )

      if( string[i] == " " )

        capitalized += string[i]
        # assuming only one space used in between words
        capitalized += string[i+1].upcase

        i += 1
        #new_limit += 1 ---- didnt need this because of else statement if it was a separate if, then would need to uncomment

        p "capitalized #{capitalized}"

        p "new_limit in #{new_limit}"

      else # <--- this can be it's own if statement but would need to uncomment new_limit += 1

        capitalized += string[i]

        p "capitalized #{capitalized}"

      end # if



    end # if

    i += 1
    p "i #{i}"
    p "new_limit #{new_limit}"

  end # while


  p "capitalized #{capitalized}"
  p string.length
  return capitalized

end

# Using split() and join
#
#
def capwords2(string)

  sentence = string.split(" ")
  # p words
  # output: ["this", "is", "a", "sentence"]

  i = 0

  while sentence.length > i

    word = sentence[i] # each word is an element

    word[0] = word[0].upcase #each word is a string -- upcase the first letter of the string/word

    # this did not require reassignment of the upcase word
    # apparently this below is redundant !!!!!!!!!!!!!!
    #
    # sentence[i] = word

    p word

    i += 1
  end

  return sentence.join(" ") # from array to string again by separating elements with "spaces"

end




# TESTS
# should all print true

puts("\nTests for capwords()")
puts("")
    puts(
      'capwords("this is a sentence") == "This Is A Sentence": ' +
      (capwords("this is a sentence") == "This Is A Sentence").to_s
    )
    puts(
      'capwords("mike bloomfield") == "Mike Bloomfield": ' +
      (capwords("mike bloomfield") == "Mike Bloomfield").to_s
    )
puts("")


puts("\nTests for capwords2()")
puts("")
    puts(
      'capwords2(" this is a   sentence ") == "This Is A Sentence": ' +
      (capwords2(" this is a   sentence ") == "This Is A Sentence").to_s
    )
    puts(
      'capwords2("mike, , bloomfield") == "Mike, , Bloomfield": ' +
      (capwords2("mike, , bloomfield") == "Mike, , Bloomfield").to_s
    )
    puts(
      'capwords2("jam") == "Jam": ' +
      (capwords2("jam") == "Jam").to_s
    )
puts("")
