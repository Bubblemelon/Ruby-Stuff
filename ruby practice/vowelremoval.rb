# Takes a string of lowercase letters`
#
# Returns a string with its vowels removed

def vowelremoval( string )

  result = ""

  vowels = [ "a","e","i","o","u" ]

  string_arr = string.split("")

  i = 0
  while ( string_arr.length > i )

      j = 0

    while( vowels.length > j )

      if( string_arr[i] == vowels[j] )
        string_arr.delete_at(i)
        p string_arr
      end

      j += 1
    end


    i += 1
  end # outter while

  result = string_arr.join()

  p result
end # def


vowelremoval( "string" ) #strng
vowelremoval( "foobar" ) # fbr
vowelremoval( "ruby" ) # rby
vowelremoval( "aeiou" ) # "" <-- empty string
