class Anagram

  def initialize(string_input)
    @string = string_input
    @letters_only_string = @string.gsub(/[\s\W]/, "")
  end

  def anagram_check(string2)
    if input_contains_non_words?() || comparison_contains_non_words?(string2)
      return "Error: You have entered at least one non-word. Try again."
    end
    if anagram?(string2)
      return "These words are anagrams!"
    end
    if antigram?(string2)
      return "These words have no letter matches and are antigrams."
    end
    return letter_matches(string2)
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
    if palindrome?(@letters_only_string) && palindrome?(string2_letters_only)
      return "These words aren't anagrams, but #{result.length} letters match: #{result_string}. (By the way . . . #{@string} and #{string2} are both palindromes!)"
    elsif palindrome?(@letters_only_string)
      return "These words aren't anagrams, but #{result.length} letters match: #{result_string}. (By the way . . . #{@string} is a palindrome!)"
    elsif palindrome?(string2_letters_only)
      return "These words aren't anagrams, but #{result.length} letters match: #{result_string}. (By the way . . . #{string2} is a palindrome!)"
    else
      return "These words aren't anagrams, but #{result.length} letters match: #{result_string}."
    end
  end

  def palindrome?(input)
    return input.downcase == input.downcase.reverse
  end

  def input_contains_non_words?
    @string.split(" ").each do |word|
      if !word.downcase.match?(/[aeiou]/)
        return true
      end
    end
    return false
  end

  def comparison_contains_non_words?(string2)
    string2.split(" ").each do |word|
      if !word.downcase.match?(/[aeiou]/)
        return true
      end
    end
    return false
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

end