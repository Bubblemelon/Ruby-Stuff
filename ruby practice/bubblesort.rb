#
# Bubble Sort
#
# sorts from highest to lowest from left to right e.g. [ 5,4,3,2,1 ]
#
# returns the sorted array !

require_relative 'randnumarray' # only used in test section !

def bubble_sort( array )

  #
  # Beginning of Bubble Sort
  #
  iteration = 1

  no_swaps = false

  until no_swaps # stops when condition becomes true

    no_swaps = true
    i = 0
    puts( "Iteration #{iteration}" )

    while( array.length - 1 > i )

      if( array[i+1] > array[i] ) #change this to reverse order
        puts("Made a swap with index #{i+1} & #{i}:")

        temp_store = array[i] # smaller value #change this to reverse order
        array[i] = array[i+1] #change this to reverse order
        array[i+1] = temp_store # put smaller value to the left #change this to reverse order

        no_swaps = false

        puts( array.inspect )
        puts()

      end # if

      i += 1

    end # while

    iteration += 1

  end # until
  #
  #  End of Bubble Sort
  #
  puts("Bubble Sort done!")

  return array


end # defs

# Tests  --- remember to remove this when this file is required in another file !!!!
# bubble_sort( random_numbers_Gen_4_array(10, 1, 10)  )
