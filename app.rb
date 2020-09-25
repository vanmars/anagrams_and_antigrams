#!usr/bin/ruby
require ('./lib/anagram')
require ('./lib/helpers')

puts ""
puts "*******************************************************"
puts "* Anagrams, Antigrams, and Palindromes . . . Oh My!!! *"
puts "*******************************************************"
puts ""

play = 'y'
while play == 'y' do
  puts ">>> Please enter a word or sentence:"
  string1 = gets.chomp

  while not_word?(string1) do
    puts ">>> Error: '#{string1}' contains a non-word. Please enter another word or sentence:"
    string1 = gets.chomp
  end

  base_string = Anagram.new(string1) 

  puts ""
  puts ">>> Please enter a word or sentence to compare:"

  string2 = gets.chomp

  while not_word?(string2) do
    puts ">>> Error: '#{string2}' contains a non-word. Please enter another word or sentence:"
    string2 = gets.chomp
  end

  puts ""
  puts ">>> #{base_string.anagram_check(string2)}"
  puts ""

  puts "******************************************"
  puts "Would you like to enter another word (y/n)"
  puts "******************************************"
  play = gets.chomp.downcase
end

puts ""
puts "********"
puts "Goodbye!"
puts "********"
puts ""

 
