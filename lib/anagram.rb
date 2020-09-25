class Anagram

  def initialize(string_input)
    @string = string_input
  end

  def anagram_check(string2)
    @string.each_char do |c|
      if @string.count(c) != string2.count(c)
        return "These words are not anagrams."
      end
    end
    return "These words are anagrams!"
  end

end