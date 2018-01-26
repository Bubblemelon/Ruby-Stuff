#
# Returns a string of letters that corresponds
# to the numbers in an array
#
# The numbers in the array are the position of the letter in the alphabet

def alpha_position( array )

  hash_alphabets = {}
  # {0=>"a", 1=>"b", 2=>"c", 3=>"d", 4=>"e", 5=>"f", 6=>"g", 7=>"h", 8=>"i", 9=>"j", 10=>"k", 11=>"l", 12=>"m", 13=>"n", 14=>"o", 15=>"p", 16=>"q", 17=>"r", 18=>"s", 19=>"t", 20=>"u", 21=>"v", 22=>"w", 23=>"x", 24=>"y", 25=>"z"}

  i = 0
  while( i < 26 ) # 26 letters, a will be at index[zero]

    ascii = "a".ord + i

    hash_alphabets[i] = ascii.chr

    i += 1
  end # while

  # p hash_alphabets

  result = ""

  j = 0
  while( array.length > j )

    result += hash_alphabets[ array[j] ]

    j += 1
  end # while

  p "Letter positions of #{array} from the alphabet correspond to: #{result}"
  return result

end # def

#
# Tests
#
alpha_position( [3, 4, 2, 1] )  # decb
alpha_position( [3, 1, 2, 0] )  # dbca
alpha_position( [5, 3, 1, 4, 2, 0] )  # fdbeca
