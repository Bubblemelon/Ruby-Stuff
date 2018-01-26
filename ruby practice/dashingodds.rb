# A method that takes in a number and returns a string:
#
# Method places a dash in fornt and back of odd digits
#
# Returns a string with no leading and trailing dashes
#
# There should be no dashes next to each other e.g. 3--3
#

#
#
#
def dashing_odds(num)

  # convert integer to string
  int_to_string = num.to_s()


  # checking the type of int_string
  #
  #

  # p num.instance_of? Integer # Fixnum is deprecated and replaced by Integer
  # p int_to_string.instance_of? String
  #
  # puts int_to_string.respond_to?(:to_s)

  # all 3 prints true !
  #
  # end of checking type of int_string
  # https://stackoverflow.com/questions/15769739/determining-type-of-an-object-in-ruby


  i = 0

  dashified = ""

  # treat string as an array
  while( int_to_string.length() > i )

    # p "int_to_string[i].to_i #{int_to_string[i].to_i} % 2 = #{int_to_string[i].to_i % 2}"

    # checks if number is odd
    if( int_to_string[i].to_i % 2 == 0 )

      if( int_to_string[i-1].to_i % 2 == 1 )

        dashified += "-"
      end

      dashified += int_to_string[i]


    else

      dashified += "-"
      dashified += int_to_string[i]
      # dashified += "-"

    end # if

    i += 1
  end # while

  # p dashified

  # remove leading dashes
  # treating string as array
  # p "dashified[0] #{dashified[0]}"

  if( dashified[0] == "-" )

    dashified = dashified.slice( 1, dashified.length() )

  end # if

  # remove trailing dashes
  # treating string as array

  # p dashified

  # p "dashified[ dashified.length() - 1 ] #{dashified[ dashified.length() - 1 ]}"

  if( dashified[ dashified.length() - 1 ] == "-" )

    dashified = dashified.slice( 0, dashified.length() - 1 )

  end # if

  p dashified


  # IMPROVEMENT !!!! 
  #
  # remove repeating dashes e.g. 3--3--3
  # treating string as array

  # maybe best to have own method !

  # End of:
  # remove repeating dashes e.g. 3--3--3
  # treating string as array


  p dashified
  return dashified

end # def

# Tests

# dashing_odds( 33333277677 )


# Should all print true

puts("\nTests for #dashing_odds")
puts("")
    puts(
      'dashing_odds(203) == "20-3": ' +
      (dashing_odds(203) == '20-3').to_s
    )
    puts(
      'dashing_odds(303) == "3-0-3": ' +
      (dashing_odds(303) == '3-0-3').to_s
    )
    puts(
      'dashing_odds(333) == "3-3-3": ' +
      (dashing_odds(333) == '3-3-3').to_s
    )
    puts(
      'dashing_odds(3223) == "3-22-3": ' +
      (dashing_odds(3223) == '3-22-3').to_s
    )
puts("")



# Condensed version of dashing_odds()
#
#
def dasherize_num(num)

  num_s = num.to_s

  result = ""

  i = 0

  while num_s.length > i

    digit = num_s[i].to_i

    if (i > 0) # only if the it's not the leading digit

      prev_digit = num_s[i - 1].to_i

      if (prev_digit % 2 == 1) || (digit % 2 == 1)
        result += "-"

      end

    end

    result += num_s[i]

    i += 1
  end

  return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for dasherize_num()")
puts("")
    puts(
      'dasherize_num(203) == "20-3": ' +
      (dasherize_num(203) == '20-3').to_s
    )
    puts(
      'dasherize_num(303) == "3-0-3": ' +
      (dasherize_num(303) == '3-0-3').to_s
    )
    puts(
      'dasherize_num(333) == "3-3-3": ' +
      (dasherize_num(333) == '3-3-3').to_s
    )
    puts(
      'dasherize_num(3223) == "3-22-3": ' +
      (dasherize_num(3223) == '3-22-3').to_s
    )
puts("")
