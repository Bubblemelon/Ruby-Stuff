# Ruby Practice

This is where I store some of my practice scrips written in ruby.


## Catalog

### [oddnumsum.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/oddnumsum.rb)  

`oddnumsum(array)`  

> Takes an array of integers.  
> Returns the sum of only odd integers from that array.  

### [primenumcheck]()  

`is_prime?(number)`  

> Takes an integer i.e. "number".
> Returns true if this "number" is prime, otherwise it returns false.  
> [Prime numbers:](https://en.wikipedia.org/wiki/Prime_number) [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, ...](http://www.primos.mat.br/indexen.html).
> A Prime number has only two divisors, 1 and itself. ( 1 is not prime )

### [randlettergen.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randlettergen.rb)  

`and_lowercase_letters_gen(n)`

> Uses the [Array() function from the Kernel Module](http://ruby-doc.org/core-2.2.0/Array.html#class-Array-label-Example+Usage) to create an array with a specified condition for its elements.  
> Uses the [array sample() function](https://ruby-doc.org/core-1.9.3/Array.html#method-i-sample) to randomly select random elements from a specified array.  
> Take an integer "n" to specify the size of the randomly generated array.  
> Returns a randomly generated array of size n e.g. array.length() == n.    

### [randnumarray.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randnumarray.rb)  

`random_numbers_Gen_4_array(length, min, max)`  

> Uses the [rand() function from the Kernel Module](http://ruby-doc.org/core-2.1.3/Kernel.html#method-i-rand), look at the comments in this [function's script](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randnumarray.rb) for more details.  
> Takes integers of 'length', 'min', and 'max' as parameters.  
> length: an array's length  
> min: the minimum value for the random number generation (the range's lower bound)  
> max: the maximum value for the random number generation (the range's upper bound)  
> Returns an array of random whole numbers using the above parameters.  

### [removerepeatedletters.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/removerepeatedletters.rb)  

`remove_repeated_letters( s )`  

> Takes a string.  
> Returns an array with the string's repeated lowercase letters removed.  

### [repeatedletternum.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/repeatedletternum.rb)  

`repeatinglettersnumber(hash)`  

> require_relative ['lettercount'](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/lettercount.rb) and ['randlettergen'](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/randlettergen.rb)  
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
> Returns a string in the format, hours:minutes .  
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
