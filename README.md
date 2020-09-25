# _Anagrams and Antigrams_

_25 September 2020_

#### _Program checks for anagrams, antigrams, and palindromes_

#### By _**Vanessa Stewart**_

## Description

_This is a project for Epicodus to practice using test driven development and encapsulation while working with Ruby classes and methods. the original instructions for the project include:_

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
| 3 | Program checks that inputs are indeed words (using the rule that all words must contain at least one vowel). | "ctgc" and "gcct" | "These are not words." |
| 4 | Program checkes whether non-anagrams are antigrams. | "hi" and "bye" | "These words have no letter matches and are antigrams." |
| 5 | Program accounts for multiple words being anagrams or antigrams. (Spaces and punctuation don't count.) | "Tom Marvolo Riddle" and "I Am Lord Voldemort." | "These words are anagrams." |

## Stretch Specifications
| Spec     | Behavior | Input    | Output   |
| -------- | -------- | -------- | -------- |
| 6 | If two words are not anagrams, program returns how many letters from the argument are actual matches with the receiver. | "cat" and "batty" | "These words aren't matches, but 2 letters match: a, t." |
| 7 | Program is refactored to call multiple other methods. (Call a palindrome method.) | "Do geese see god" and "Live on time, emit no evil"| "These words are not anagrams, but they are both palindromes!" |
| 8 | Program uses a dictionary gem to check whether inputs are words. | "ruby" and "yurb" | "'yurb' is not a word." |

## Setup/Installation Requirements

- Navigate to the directory on your local computer where you would like to clone this repo.
- Clone this repo using the 'git clone https://github.com/vanmars/anagrams_and_antigrams.git' command in terminal/command line.
- Navigate to the cloned folder and run 'bundle' in your command line to download all dependencies.
- Open the cloned repo in a text editor of your choice.

- **To Run Tests**: While in the root directory of the project, run 'rspec' in your command line.
- **To Run the Console App**: While in the root directory of the project, run 'ruby app.rb' in the terminal.

## Known Bugs

_There are no known bugs at this time._

## Support and Contact Details

_Connect with me at vamariestewart@gmail.com with ideas to improve this project._

## Technologies Used

* Ruby
* Ruby Gems: RSpec, Pry

### License

Copyright (c) 2020 **_Vanessa Stewart_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
