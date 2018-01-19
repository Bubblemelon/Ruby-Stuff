#
# A method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
require 'time'


#
# using modulo and divide
#
def time_conversion( minutes )

# https://ruby-doc.org/stdlib-2.1.1/libdoc/time/rdoc/Time.html
#
# must require 'time' to work
#
# t = Time.now
# puts(t.iso8601)
# puts(t.rfc2822)
# puts(t.httpdate)
#
# output:
#
# 2018-01-18T17:36:58-08:00
# Thu, 18 Jan 2018 17:36:58 -0800
# Fri, 19 Jan 2018 01:36:58 GMT

  if( minutes < 60 )
    time = minutes.to_s()
    time = "0:" + time
    #puts(time)
    return time
  else

    hours = minutes / 60
    minutes = minutes % 60 # to get remainning minutes

    # puts ( hours )
    # puts( minutes )

    time = hours.to_s()
    minutes = minutes.to_s()

    if( minutes.length() == 1 )
      minutes += "0"
    end

    time = time + ":" + minutes

    return time
  end

end

#
# Without using modulo and divide
#
def time_conversion2(minutes)
  hours = 0

  while minutes >= 60 # keep substracting 60 untill leaving just minutes less than 60
    hours += 1
    minutes -= 60
  end

  if minutes < 10 # less than two digit minutes
    minutes_s = "0" + minutes.to_s
  else # more than 10
    minutes_s = minutes.to_s
  end

  return hours.to_s + ":" + minutes_s
end


# Tests ( should all print true )

puts("\nTests for time_conversion()")
puts()

    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
    puts('time_conversion(634) == "10:34": ' + (time_conversion(634) == '10:34').to_s)

puts()

puts("\nTests for time_conversion2()")
puts()

    puts('time_conversion2(15) == "0:15": ' + (time_conversion2(15) == '0:15').to_s)
    puts('time_conversion2(150) == "2:30": ' + (time_conversion2(150) == '2:30').to_s)
    puts('time_conversion2(360) == "6:00": ' + (time_conversion2(360) == '6:00').to_s)
    puts('time_conversion2(634) == "10:34": ' + (time_conversion2(634) == '10:34').to_s)

puts()
