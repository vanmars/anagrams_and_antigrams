# _Anagrams, Antigrams, and Palindromes . . . Oh My!!!_

_25 September 2020_

#### _A console app that checks for anagrams, antigrams, and palindromes_

#### By _**Vanessa Stewart**_

## Description

_This is a project for Epicodus to practice using test driven development and encapsulation while working with Ruby classes and methods. This program queries users for two inputs: a word, sentence or name of a .txt file, containing words or sentences. The program then checks to see if the two strings are anagrams or antigrams (spacing, punctuation, and capitaliztion do not cause errors). If neither, the program returns the letters that do match. The program also informs the user whether each individual input is a palindrome or not. If a user enters a word that is not a real word, the program will return an error and prompt the user to enter a new input before continuing. Once the program completes it checks, it gives the user the option to enter two new strings or to quit the program altogether._ 

_The original instructions for the project are listed below:_

Create an algorithm with an anagram method that follows the rules included below.

You should have at least one passing test for each of the included steps (in other words, a minimum of 5 tests). You only need to write unit tests written with rspec, not written specs in your README. Make sure you commit after each passing test. Your final project should have at least 6 commits, including one for each passing test.

Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters.

Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."

Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.)

If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.

## Specifications
| Spec     | Behavior | Input    | Output   |
| -------- | -------- | -------- | -------- |
| 1 | Program checks if two words are anagrams. | "ruby" and "bury" | "These words are anagrams!" |
| 2 | Program accounts for capitalized letters. | "Tea" and "Eat" | "These words are anagrams!" |
| 3 | Program checks that inputs are indeed words (using the rule that all words must contain at least one vowel). | "ctgc" and "gcct" | "Error: You have entered at least one non-word. Try again." |
| 4 | Program checkes whether non-anagrams are antigrams. | "hi" and "bye" | "These words have no letter matches and are antigrams." |
| 5 | Program accounts for multiple words being anagrams or antigrams. (Spaces and punctuation don't count.) | "Tom Marvolo Riddle" and "I Am Lord Voldemort." | "These words are anagrams." |

## Stretch Specifications
| Spec     | Behavior | Input    | Output   |
| -------- | -------- | -------- | -------- |
| 6 | Program accounts for multiple words being anagrams or antigrams. (Spaces and punctuation don't count.), but will reject entire phrase if it contains non-words. | "Tzm Mqrvzlz Rbddle" and "B Qm Lzrd Vzldemzrt." | "Error: You have entered at least one non-word. Try again." |
| 7 | If two words are not anagrams, program returns how many letters from the argument are actual matches with the receiver. | "catt" and "batty" | "These words aren't matches, but 3 letters match: a, t, t." |
| 8 | Program runs a palindrome check on non-anagrams and non-antigrams| "mom" and "mommy"| "These words aren't anagrams, but 3 letters match: m, o, m. (By the way . . . 'mom' is a palindrome!" |
| 9 | Program runs a palindrome check on anagrams| "racecar" and "care arc"| "These words are anagrams! (By the way . . . 'racecar' is a palindrome!" |
| 10 | Program runs a palindrome check on antigrams| "madam" and "refer"| "These words have no letter matches and are antigrams! (By the way . . . 'madam' and 'refer' are both palindromes!" |
| 11 | Program uses a dictionary gem to check whether inputs are words. | "yurb" | "Error: 'yurb' contains a non-word. Please enter another word or sentence:" |
| 12 | Program process strings within .txt files. | "time.txt" and "geese.txt" | These words aren't anagrams, but 6 letters match: e, o, e, e, o, e. (By the way . . . '"Live on time, emit no evil."' and '"Do geese see God?"' are both palindromes!) |

## Setup/Installation Requirements

- Navigate to the directory on your local computer where you would like to clone this repo.
- Clone this repo using the 'git clone https://github.com/vanmars/anagrams_and_antigrams.git' command in terminal/command line.
- Navigate to the cloned folder and run 'bundle' in your command line to download all dependencies.
- Open the cloned repo in a text editor of your choice.

- **To Run Tests**: While in the root directory of this project, run 'rspec' in your command line.
- **To Run the Console App**: While in the root directory of the project, run 'ruby app.rb' in the terminal. (For fun: try entering the two .txt files 'time.txt' and 'geese.txt' as inputs in the app. Or, better yet, add your own .txt files to this project directory and process them!)

## Known Bugs
* The 'dictionary_lookout' gem, oddly, does not return entries for common words. I encountered issues with the following words: _egg_, _monkey_, _lived_.

## Elements to Improve
* I would like to allow users to enter names, but currently the dictionary_lookout gem rejects names as non-words.
* If a user enters a .txt file as an input, the code currently does not check the text within that file for non-words. In the future, I'd like to run that word check on the contents of the file.
* Some tests are commented out in the 'anagram_spec.rb' file, for the 'dictionary_lookout' gem addition made checking for words in the 'anagram.rb' file redundant. Ordinarilly, I would remove these commented out pieces of code, but for the sake of my teachers at Epicodus, I have left them in.

## Support and Contact Details

_Connect with me at vamariestewart@gmail.com with ideas to improve this project!_

## Technologies Used

* Ruby
* Ruby Gems: rspec, pry, dictionary_lookout

### License

Copyright (c) 2020 **_Vanessa Stewart_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
