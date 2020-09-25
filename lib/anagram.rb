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

  def anagram_check(string2)
    if !@string.downcase.match?(/[aeiou]/) || !string2.downcase.match?(/[aeiou]/)
      return "Error: You have entered a non-word. Try again."
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