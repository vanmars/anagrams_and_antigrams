require ('rspec')
require ('anagram')

describe ('Anagram#anagram_check') do
  
  it('correctly checks whether two words are anagrams') do
    string = Anagram.new('ruby')
    expect(string.anagram_check("bury")).to(eq("These words are anagrams!"))
  end

  it('correctly checks whether two words are anagrams') do
    string = Anagram.new('ruby')
    expect(string.anagram_check("burry")).to(eq("These words are not anagrams!"))
  end

end