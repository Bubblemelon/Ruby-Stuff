# Ruby Practice

This is where I store some of my practice scrips written in ruby.


## Catalog

### [oddnumsum.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/oddnumsum.rb) `oddnumsum(array)`  
> Takes an array of integers.  
> Returns the sum of only odd integers from that array.  

### [time.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/time.rb)  

- ### `time_conversion(minutes)`  

  > Requires the [time library](http://ruby-doc.org/stdlib-2.2.2/libdoc/time/rdoc/Time.html).
  > Takes an integer ( number of minutes )
  > Returns a string in the format, hours:minutes .
  > `time_conversion(minutes)` uses modulo '%' to count remaining minutes and divide '/' to count the hours. ( look at inline comments in this file )  


  - ### `time_conversion2(minutes)`  

    > Same purpose as `time_conversion(minutes)` but implemented differently.  
    > `time_conversion2(minutes)` uses if statements to see if it's more than 60 minutes, adds 1 to hour variable and then subtract by 60 within a while loop.  
    
### [vowelcount.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/vowelcount.rb) `vowel_count(string)`  
> Takes a string of lower case letters.  
> Returns the number of vowels in that string.

### [vowelremoval.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/vowelremoval.rb) `vowelremoval(string)`  
> Takes a string of lowercase letters.  
> Coverts it to an array
> Returns a string with all vowels removed.  

### [z-near-a.rb](https://github.com/Bubblemelon/Ruby-Stuff/blob/master/ruby%20practice/z-near-a.rb)

  - ### `z_after_a(string)`  

    > Takes a string of lowercase letters.  
    > Returns true if the letter "z" appears within three indexes after an "a".
    > e.g. 0 => a, then z must appear with indexes [1], [2], [3] .

    - ### `z_after_a2(string)`  

      > Same purpose as `z_after_a(string)` but implemented differently.  
      > This uses a while loop to check, the former only uses if statements which may not catch all cases ( as in work for all cases )   
