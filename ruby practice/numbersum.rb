# A method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#

#
# adding from large to small e.g. 5 4 3 2 1
#

def sum_nums(num)

count = num

if( num == 0 )
  return num
end

  while count > 0
    num += count - 1
    #puts "Num: #{num}"
    count -= 1
    #puts "Count: #{count}"
  end

  return num
end

#
# adding from small to large 1 2 3 4 5
#

def sum_nums2(num)

count = 0
result = 0

  while num >= count
     result += count
     count += 1
  end
  #puts( result )
  return result
end

#
# Tests ( should all print true )
#
puts("\nTests for sum_nums()")
puts()

    puts('sum_nums(1) == 1: ' + (sum_nums(1) == 1).to_s)
    puts('sum_nums(2) == 3: ' + (sum_nums(2) == 3).to_s)
    puts('sum_nums(3) == 6: ' + (sum_nums(3) == 6).to_s)
    puts('sum_nums(4) == 10: ' + (sum_nums(4) == 10).to_s)
    puts('sum_nums(5) == 15: ' + (sum_nums(5) == 15).to_s)

puts()

puts("\nTests for sum_nums2()")
puts()

    puts('sum_nums2(1) == 1: ' + (sum_nums2(1) == 1).to_s)
    puts('sum_nums2(2) == 3: ' + (sum_nums2(2) == 3).to_s)
    puts('sum_nums2(3) == 6: ' + (sum_nums2(3) == 6).to_s)
    puts('sum_nums2(4) == 10: ' + (sum_nums2(4) == 10).to_s)
    puts('sum_nums2(5) == 15: ' + (sum_nums2(5) == 15).to_s)

puts()
