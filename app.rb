#!usr/bin/ruby
require ('./lib/anagram')
require ('dictionary_lookup')

puts ""
puts "*******************************************************"
puts "* Anagrams, Antigrams, and Palindromes . . . Oh My!!! *"
puts "*******************************************************"
puts ""
puts ">>> Please enter a word or sentence:"

string1 = gets.chomp
while DictionaryLookup::Base.define(string1).count == 0 do
  puts ">>> Error: '#{string1}' is not a word. Please enter another word:"
  string1 = gets.chomp
end

base_string = Anagram.new(string1) 
puts ""
puts ">>> Please enter a word or sentence to compare:"

string2 = gets.chomp
while DictionaryLookup::Base.define(string2).count == 0 do
  puts ">>> Error: '#{string2}' is not a word. Please enter another word:"
  string2 = gets.chomp
end

puts ""
puts ">>> #{base_string.anagram_check(string2)}"
puts ""


 
