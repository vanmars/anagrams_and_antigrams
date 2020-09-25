class Anagram

  def initialize(string_input)
    @string = string_input
  end

  def anagram_check(string2)
    if !@string.downcase.match?(/[aeiou]/) || !string2.downcase.match?(/[aeiou]/)
      return "Error: You have entered a non-word. Try again."
    end
    @string.each_char do |c|
      if @string.downcase.count(c.downcase) != string2.downcase.count(c.downcase)
        return "These words are not anagrams."
      end
    end
    return "These words are anagrams!"
  end

end