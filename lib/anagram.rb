class Anagram

  def initialize(string_input)
    @string = string_input
    @letters_only_string = @string.gsub(/[\s\W]/, "")
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


  def anagram_check(string2)
    if comparison_contains_non_words?(string2) || input_contains_non_words?()
      return "Error: You have entered at least one non-word. Try again."
    end

    if anagram?(string2)
      return "These words are anagrams!"
    end

    if antigram?(string2)
      return "These words have no letter matches and are antigrams."
    end

   return "These words are not anagrams."
  end

end