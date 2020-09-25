class Anagram

  def initialize(string_input)
    @string = string_input
  end

  def anagram?(string2)
    if @string.length != string2.length
      return false
    end
    @string.each_char do |c|
      if @string.downcase.count(c.downcase) == string2.downcase.count(c.downcase)
        next
      else 
        return false
      end
    end
    return true
  end
  
  def antigram? (string2)
    @string.each_char do |c|
      if @string.downcase.count(c.downcase) != string2.downcase.count(c.downcase)
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