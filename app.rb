#!usr/bin/ruby
require ('./lib/anagram')

puts ""
puts "*******************************************************"
puts "* Anagrams, Antigrams, and Palindromes . . . Oh My!!! *"
puts "*******************************************************"
puts ""
puts ">>> Please enter a word or sentence:"
string1 = gets.chomp
base_string = Anagram.new(string1) 
puts ""
puts ">>> Please enter a word or sentence to compare:"
string2 = gets.chomp
puts ""
puts ">>> #{base_string.anagram_check(string2)}"
puts ""
puts ">>> . . . Goodbye!"
puts ""
 
