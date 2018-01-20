# A method that takes a string and returns true if the letter
# "z" appears WITHIN three letters **after** an "a".
#
#  letter space < 4
#
# Assuming that the string contains only lowercase letters.
#

#
#
# Without using next()
#
#
def z_after_a(string)

  i = 0

  while( string.length() > i )

    # puts(i)
    # puts(string[i])

    if( string[i] == "a" )

      # puts( "aaa" )

      if( string[i+1] == "z" )
        # puts( "1" )
        return true
      end

      if( string[i+2] == "z" )
        # puts( "2" )
        return true
      end

      if( string[i+3] == "z" )
        # puts( "3" )
        return true
      end


    end # large if

    i += 1
    # puts( "none" )


  end # while

  return false

end # def

#
#
# Using next()
# Jumps to the next iteration of the most internal loop.
# Terminates execution of a block if called within a block (with yield or call returning nil)
#
# https://www.tutorialspoint.com/ruby/ruby_loops.htm
#
def z_after_a2(string)

  index = 0

  while string.length() > index

    if string[ index ] != "a"
      index += 1
      next # if cond is true then jumps to next while ( ignores "index2 = index + 1" )
    end

    index2 = index + 1

    while ( string.length > index2 ) && ( index + 3 >= index2 )

      if string[index2] == "z"
        return true
      end

      index2 += 1

    end# while

    index += 1

  end # while

  return false


end

# Tests - all should print true.

puts("\nTests for z_after_a()")
puts()
    puts('z_after_a("baz") == true: ' + (z_after_a('baz') == true).to_s)
    puts('z_after_a("abz") == true: ' + (z_after_a('abz') == true).to_s)
    puts('z_after_a("abcz") == true: ' + (z_after_a('abcz') == true).to_s)
    puts('z_after_a("a") == false: ' + (z_after_a('a') == false).to_s)
    puts('z_after_a("z") == false: ' + (z_after_a('z') == false).to_s)
    puts('z_after_a("za") == false: ' + (z_after_a('za') == false).to_s)
puts()

puts("\nTests for z_after_a2()")
puts()
    puts('z_after_a2("baz") == true: ' + (z_after_a2('baz') == true).to_s)
    puts('z_after_a2("abz") == true: ' + (z_after_a2('abz') == true).to_s)
    puts('z_after_a2("abcz") == true: ' + (z_after_a2('abcz') == true).to_s)
    puts('z_after_a2("a") == false: ' + (z_after_a2('a') == false).to_s)
    puts('z_after_a2("z") == false: ' + (z_after_a2('z') == false).to_s)
    puts('z_after_a2("za") == false: ' + (z_after_a2('za') == false).to_s)
puts()
