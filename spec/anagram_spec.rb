require ('rspec')
require ('anagram')

describe ('Anagram#anagram_check') do
  
  it('correctly checks whether two words are anagrams') do
    string = Anagram.new('ruby')
    expect(string.anagram_check("bury")).to(eq("These words are anagrams!"))
  end

  it('correctly checks whether two words are not anagrams') do
    string = Anagram.new('ruby')
    expect(string.anagram_check("burry")).to(eq("These words are not anagrams."))
  end

  it('accounts for capitalized letters') do
    string = Anagram.new('Tea')
    expect(string.anagram_check("Eat")).to(eq("These words are anagrams!"))
  end
end