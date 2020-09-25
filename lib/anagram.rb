require ('dictionary_lookup')
require ('./lib/helpers')

class Anagram

  def initialize(string_input)
    @string = string_input
    @letters_only_string = @string.gsub(/[\s\W]/, "")
  end

  def anagram_check(string2)
    if anagram?(string2)
      return "These words are anagrams!#{palindrome_results(string2)}"
    end
    if antigram?(string2)
      return "These words have no letter matches and are antigrams.#{palindrome_results(string2)}"
    end
    return "#{letter_matches(string2)}#{palindrome_results(string2)}"
  end

  def palindrome_results(string2)
    string2_letters_only = string2.gsub(/[\s\W]/,"")
    if palindrome?(@letters_only_string) && palindrome?(string2_letters_only)
      return " (By the way . . . '#{@string}' and '#{string2}' are both palindromes!)"
    elsif palindrome?(@letters_only_string)
      return " (By the way . . . '#{@string}' is a palindrome!)"
    elsif palindrome?(string2_letters_only)
      return " (By the way . . . '#{string2}' is a palindrome!)"
    else
      return
    end
  end

  def anagram?(string2)
    string2_letters_only = string2.gsub(/[\s\W]/,"")
    if @letters_only_string.length != string2_letters_only.length
      return false
    end
    @letters_only_string.each_char do |c|
      if @letters_only_string.downcase.count(c.downcase) == string2_letters_only.downcase.count(c.downcase)
        next
      else 
        return false
      end
    end
    return true
  end
  
  def antigram? (string2)
    string2_letters_only = string2.gsub(/[\s\W]/,"")
    @letters_only_string.each_char do |c|
      if @letters_only_string.downcase.count(c.downcase) != string2_letters_only.downcase.count(c.downcase)
        next
      else 
        return false
      end
    end
    return true
  end

  def letter_matches(string2)
    string2_letters_only = string2.gsub(/[\s\W]/,"")
    result = []
    @letters_only_string.each_char do |c|
      if string2_letters_only.include?(c)
        result.push(c)
        string2_letters_only.sub!(c, "")
      end
    end
    result_string = result.join(", ")
    return "These words aren't anagrams, but #{result.length} letters match: #{result_string}."
  end
  
end