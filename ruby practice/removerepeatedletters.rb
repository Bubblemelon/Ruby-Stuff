# Takes a string and returns an array with repeated letters removed
#
def remove_repeated_letters( s )

  s_array = s.split("")
  p s_array
  # ["a", "b", "d", "b", "f", "f", "f"]

  i = 0

  new_limit = 0

  while( s_array.length() > i )

    j = i + 1

    p s_array

    while( s_array.length() + new_limit > j )

      p "s_array[#{i}] #{s_array[i]} | s_array[#{j}] #{s_array[j]}"
      if( s_array[i] == s_array[j] )

        # a reoccurance of another letter

        s_array.delete_at( j )

        p "s_array.length #{s_array.length}"

        # new_limit += 1

        p s_array

        j -= 1

      end #if

      j += 1
    end # inner while

    i += 1
  end # while

  return s_array


end


# tests
#

remove_repeated_letters( "abdzzbegffzfccfzgddeegg" )
