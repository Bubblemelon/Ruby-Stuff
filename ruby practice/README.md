# Ruby Practice

This is where I store some of my practice scrips written in ruby.


## Catalog  

### [capwords.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/capwords.rb)  

`capwords(string)`  

> Takes a string of lowercase words as a sentence, with a "space" in between words.   
> Returns a string with each word's first letter capitalised.  
> e.g. "candy cane forest", returns "Candy Cane Forest".  
> Assumes no punctuation and assumes no spaces in the beginning of a sentence.  
> This implementation capitalises the first letter of every word in the given sentence/"string", looks for a "space" character and then capitalises the element to its right, next to this space. This function does not split the string into an array, it treats the "string" as an array.      

`capwords2(string)`  

> Same purpose as `capwords(string)` but implemented differently.  
> This implementation can handle punctuation and multiple spaces, at the beginning of the sentence and anywhere in between and at the end.  
> This function splits the "string" into an array of words (including punctuation if any) and then capitalises each element in the array (if an element is a punctuation, it is ignored and is returned as part of the string in the same order it was received). This array is then joined as a string with spaces between each capitalised element.  

### [consec7.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/consec7.rb)  

`three_7s?(array)`  

> Takes an array of integers, i.e. whole numbers and may have negative.    
> Returns true if any three consecutive elements from "array" sums up to 7.  
> Less thoroughly checked; IMPROVEMENT:  
> - Use `random_numbers_Gen_4_array` from [randnumarray.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randnumarray.rb) to form an array variable to use as a parameter to test this function's correctness.  

### [dashingodds.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/dashingodds.rb)

`dashing_odds(num)`  

> Takes an integer "num" (could be more than one digit).   
> Returns a string where a dash is placed in front and back of an odd number, this string does not have trailing and leading dashes.  
> e.g. num = 203, returns "20-3" as a string.  
> This implementation is longer; this function slices the string front and back after dashes are added.   

`dasherize_num(num)`  

> Same purpose as `dashing_odds(num)` but implemented differently.  
> Ignores adding a dash to the first digit regardless of odd or even, and then adds a dash if either the current digit or the current digit's previous digit is odd. This does not cause a trailing dash because the dash is always added to the string before the digit.  

### [factorial.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/factorial.rb)  

`factorial(n)`  

> Takes an integer "n".  
> Returns the factorial of "n" e.g. n = 3, then n! == 3! == 3*2*1 == 6  
> Implements recursion.

`factorial2(n)`  

> Same purpose as `factorial(n)` but implemented without using recursion.  

### [greatestcommonfactor.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/greatestcommonfactor.rb)  

`greatest_common_factor( num1, num2)`  

> Takes two integers.  
> Returns the largest common factor shared between "num1" and 'num2'.   
> The return value will always take the last element from the union of the factors.
> This function stores all the factors of "num1" and "num2" in their own arrays. The factors are ordered from the smallest to the largest beginning from index zero, look at the first while loop of this function.  

### [greatestnumarray.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/greatestnumarray.rb)  

`greatest( array )`  

> Takes an array of integers.  
> Returns the largest number in "array".  
> Uses the ternary operator to shorten function.  
> Used `random_numbers_Gen_4_array(length,min,max)` from [randnumarray.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randnumarray.rb) to test correctness.  

### [helloruby.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/helloruby.rb)  

> A function that asks for your name and prints it as on output.  
> Uses [`chomp()`](https://ruby-doc.org/core-2.2.0/String.html#method-i-chomp) to remove `\r` and `\n`

### [lettercount.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/lettercount.rb)  

> Explains [ruby scope](http://www.techotopia.com/index.php/Ruby_Variable_Scope).  
> The purpose of the three functions below is to get the highest frequency of a letter, as in the most common letter in a string.   

`string_splitter( string )`  

> Takes a string.  
> Returns an array of this string with its letters/characters as individual elements.  
> e.g. "jelly" returns ["j","e","l,"l","y"]    

`hash_letter_freq(array)`  

> Takes an array of lowercase letters (will have duplicates).  
> Returns a hash with letters as keys and its frequency, the number a letter's repeats as values.   
> Used `rand_lowercase_letters_gen(n)` as a variable to check the correctness of this function.  
> e.g. j => 1, e => 1, l => 2, y => 1  

`highest_letter_freq(hash)`  

> Takes a hash, letters==keys and frequency==values e.g. j => 1, e => 1, l => 2, y => 1
> Returns the letter with the highest frequency, the most number of repeats, as an array with the letter and its frequency. e.g. [l,2]  
> Uses `Hash.each` block and an alternative function i.e. `Hash.max_by{|key,value| value}` can be found in the [note2self.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/note2self.rb) file.  
> Explanation on [Hash.values()](http://ruby-doc.org/core-1.9.3/Hash.html#method-i-values).  


`most_common_letter(s)`  

> Takes a string "s".  
> Returns the letter/character in "s" that is the most common or has the highest frequency of reoccurring.  
> Less thorough case checks than `highest_letter_freq(hash)` but is shorter to implement.  
> Does what `string_splitter( string )` + `hash_letter_freq(array)` + `highest_letter_freq(hash)`, as a function.  

### [longestword.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/longestword.rb)  

`longest_word(sentence)`  

> Takes a string "sentence".  
> Returns the longest word in the string.  
> Assumes only spaces and lowercase letters in "sentence".  
> Uses the ternary operator, making this function's implementation shorter than `ongest_word2(sentence)`.  

`longest_word2(sentence)`  

> Same purpose as `longest_word(sentence)` but implemented differently.  
> This function's implementation does not use the ternary operator.  

### [note2self.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/note2self.rb)  

> Some test functions and notes to myself:
> - `looping_by_multi_2(num)`: the powers of 2: where "num" is the number of times to multiply 2 by itself.  
> - `modulo_sample(num)`: prints "num" % 2.  
> - `pp`, `p`, `print` and `puts` explanation.  
> - `countdown`: counts down from a number that a user inputs.  
> - `random_numbers_Gen_4_array`: generates random numbers stored in an array and use [sample()](https://stackoverflow.com/questions/8567917/how-to-use-arraysamplen-random-rng-syntax) to take to elements from this array, and later prints this selection; require_relative 'randnumarray'
> - [`sample(n, random: rng) → new_ary`](https://stackoverflow.com/questions/8567917/how-to-use-arraysamplen-random-rng-syntax
) explanation, including what rng is.  
> - `largest_hash_key`: returns the max hash key-value pair using values of hash elements as the comparing factor.    
> - `""` and `''` [differences explained](https://stackoverflow.com/questions/6395288/double-vs-single-quotes
) and their [performance](https://stackoverflow.com/questions/1836467/is-there-a-performance-gain-in-using-single-quotes-vs-double-quotes-in-ruby).  
> - `wrapping_round(offset)`: wrapping round the set of ascii lowercase letters, when an offset surpasses z it wraps around back to a and continues to the amount that the offset specifies.  

### [nthprime.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/nthprime.rb)  

`prime_num_gen(array_size)`  

> Takes an integer "array_size".  
> Returns an array of prime numbers in sequential order from smallest to largest with this array length equal to "array_size".  

`nth_prime(n)`  

> Takes an integer "n" as the position of a prime number in the prime number sequence.  
> Returns the prime number at the "n"th position.  
> Uses `prime_num_gen(array_size)`.  
> Counts from 0th to Nth, i.e. 2, 3, 5, 7 ... prime 2 is in position zero.  

### [numberingthealphabet.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/numberingthealphabet.rb)  

`alpha_position(array)`  

> Takes an array of numbers which are the positions of letters in the alphabet.  
> Returns a string of letters that corresponds to the numbers in "array".   
> e.g. [3,4,2,1] returns "decb"  
> Creates a hash of 26 letters each from the alphabet (letter position in alphabet as the key and letter as the value) and then with hash[array[i]] creates a string.  

### [numbersum.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/numbersum.rb)  

`sum_nums(num)`  

> Takes an integer i.e. "num".  
> Returns the sum of all integers from zero to "num", inclusive of "num".  
> This implementation adds "num" with "num"-1, "num"-2, "num"-n, until zero (large to small).  

`sum_nums2(num)`  

> Same purpose as `sum_nums(num)` but implemented differently.  
> This implementation adds zero "0" with zero+1, zero+2, zero+n, until "nums" (small to large).   

### [oddnumsum.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/oddnumsum.rb)  

`oddnumsum(array)`  

> Takes an array of integers.  
> Returns the sum of only odd integers from that array.  

### [pairsumzero.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/pairsumzero.rb)  

`diff_zero(nums)`  

> Takes an array of numbers i.e. "nums".  
> Returns the indexes of two numbers from the "nums" array if these two numbers' **difference** equal to zero (as an array), otherwise return nil.  
> e.g. [1,-3,1] returns [0,2]; because -1 - 1 = 0  
> This can be easily changed to summing, instead of subtracting, look at inline comments for where to change "-" sign to "+" sign.  
> This implementation iterates from the back of the "nums" array. (with an inner loop comparing current i with j that increments)  

`sum_zero(nums)`  

> Similar to `diff_zero( nums )` but instead of finding the difference of two numbers from "nums" array, it is the **sum**.  
> e.g. [2,-3,5,-2] returns [0,3]; because 2 + (-2) = 0  
> This implementation iterates from the fornt of the "nums" array. (with an inner loop comparing current i with j that increments)    


### [palindrome.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/palindrome.rb)  

`palindrome?(string)`  

> Takes a string of lowercase letters.  
> Returns true if this "string" is a palindrome.  
> Converts "string" to an array and takes the reverse of "string" into a second array, compare these two arrays; if they match then return true otherwise false.  

`palindrome2?(string)`  

> Same purpose as `palindrome?(string)` but is implemented differently.  
> Compares the front of the "string" with the back of the "string", and keep iterating until the middle of the "string"; finds at least one difference to return false otherwise returns true.  

### [palindromeidentifier.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/palindromeidentifier.rb)  

`longest_palindrome(string)`  
> require_relative 'palindrome'.  
> Uses [`palindrome2?(string)`](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/palindrome.rb) to check for palindromes within this function.  
> Takes a string of lowercase letters.    
> Returns the longest possible palindrome from "string"; considers substrings of "string".      

### [powerof2check.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/powerof2check.rb)  

`power_of_two?(num)`  

> Takes a number i.e. "num".   
> Returns true if num is a value of the power of 2 i.e. if for some n that, 2^n = num .  
> e.g. num = 2, this returns true because 2^1 = num.  
> These are some of the [values of the power of 2](https://en.wikipedia.org/wiki/Power_of_two): 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, ...  
> This method keeps multiplying the variable result which starts off as "1" by 2 until it matches or surpasses "num"; returns true if the eventual result == num otherwise returns false.  

`power_of_two2(num)`  

> Same purpose as `power_of_two?(num)` but is implemented differently.  
> Checks if there's a remainder when "num" is divided by 2 using modulo "%":  
> - if there's no remainder then keep "num" dividing until it reaches the value 1 (returns true).  
> - if there is a remainder then, return false.    

### [primenumcheck]()  

`is_prime?(number)`  

> Takes an integer i.e. "number".  
> Returns true if this "number" is prime, otherwise it returns false.  
> [Prime numbers:](https://en.wikipedia.org/wiki/Prime_number) [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, ...](http://www.primos.mat.br/indexen.html)  
> A Prime number has only two divisors, 1 and itself.  

### [randlettergen.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randlettergen.rb)  

`rand_lowercase_letters_gen(n)`

> Uses the [Array() function from the Kernel Module](http://ruby-doc.org/core-2.2.0/Array.html#class-Array-label-Example+Usage) to create an array with a specified condition for its elements.  
> Uses the [array sample() function](https://ruby-doc.org/core-1.9.3/Array.html#method-i-sample) to randomly select random elements from a specified array.  
> Take an integer "n" to specify the size of the randomly generated array.  
> Returns a randomly generated array of size n e.g. array.length() == n.    

### [randnumarray.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randnumarray.rb)  

`random_numbers_Gen_4_array(length, min, max)`  

> Uses the [rand() function from the Kernel Module](http://ruby-doc.org/core-2.1.3/Kernel.html#method-i-rand), look at the comments in this [function's script](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randnumarray.rb) for more details.  
> Takes integers of 'length', 'min', and 'max' as parameters:  
> - length: an array's length  
> - min: the minimum value for the random number generation (the range's lower bound)  
> - max: the maximum value for the random number generation (the range's upper bound)  
> Returns an array of random whole numbers using the above parameters.  

### [removerepeatedletters.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/removerepeatedletters.rb)  

`remove_repeated_letters( s )`  

> Takes a string.  
> Returns an array with the string's repeated lowercase letters removed.  

### [repeatedletternum.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/repeatedletternum.rb)  

`repeatinglettersnumber(hash)`  

> require_relative ['lettercount'](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/lettercount.rb) and ['randlettergen'](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randlettergen.rb), only used during testing.    
> Takes a hash of lowercase letters as keys and its frequency as values, e.g. "aaabbc", a=>3 b=>2 c=>1  
> Returns the number of repeating letters.  
> e.g. "aaabbc", using this function would return 2. As in, there are 2 repeating letters i.e. "a" and "b".
> In other words, this function counts the number of letters that repeat (not a letter's frequency of repeats).  

`num_repeated_letters( s )`  

> Takes a string of lowercase letters.    
> Returns the number of repeating letters.  
> Same purpose as `repeatinglettersnumber(hash)` but this function's parameter takes a string and not a hash.

### [stringreverse.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/stringreverse.rb)  

`reverse(string)`  

> Takes a string of lowercase letters.  
> Returns a string with the same letter but in the reverse order.  
> This overrides the [ruby reverse()](https://ruby-doc.org/core-2.2.0/String.html#method-i-reverse-21) function. It is of my own implementation.  
> Iterates the string from the back to to the front saving it in a variable.  

`reverse2(string)`  

>  Same purpose as `reverse(string)` but implemented differently.  
> Uses [array pop()](http://ruby-doc.org/core-2.2.0/Array.html#method-i-pop) and [array join()](http://ruby-doc.org/core-2.2.0/Array.html#method-i-join) functions.

### [stringscrambler.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/stringscrambler.rb)  

`string_scrambler(string, positions_array)`  

> Takes a string and an array of the string's new index positions .e.g. "dog" [2,1,0] becomes "god".  
> Returns a string containing letters corresponding to the new positions.

### [time.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/time.rb)  

`time_conversion(minutes)`  

> Requires the [time library](http://ruby-doc.org/stdlib-2.2.2/libdoc/time/rdoc/Time.html).  
> Takes an integer ( number of minutes )  
> Returns a string in the format, hours:minutes.  
> `time_conversion(minutes)` uses modulo '%' to count remaining minutes and divide '/' to count the hours. ( look at inline comments in this file )  


`time_conversion2(minutes)`  

> Same purpose as `time_conversion(minutes)` but implemented differently.  
> `time_conversion2(minutes)` uses if statements to see if it's more than 60 minutes, adds 1 to hour variable and then subtract by 60 within a while loop.  

### [vowelcount.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/vowelcount.rb)  

`vowel_count(string)`  

> Takes a string of lower case letters.  
> Returns the number of vowels in that string.

### [vowelremoval.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/vowelremoval.rb)  

`vowelremoval(string)`  

> Takes a string of lowercase letters.  
> Coverts it to an array
> Returns a string with all vowels removed.  

### [z-near-a.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/z-near-a.rb)

`z_after_a(string)`  

> Takes a string of lowercase letters.  
> Returns true if the letter "z" appears within three indexes after an "a".
> e.g. 0 => a, then z must appear with indexes [1], [2], [3] .

`z_after_a2(string)`  

> Same purpose as `z_after_a(string)` but implemented differently.  
> This uses a while loop to check, the former only uses if statements which may not catch all cases (as in work for all cases).   
