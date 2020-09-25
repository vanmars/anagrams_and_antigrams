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

  it('does not include non-words in anagram test') do
    string = Anagram.new('ctgc')
    expect(string.anagram_check("gcct")).to(eq("Error: You have entered at least one non-word. Try again."))
  end

  it('checks for antigrams') do
    string = Anagram.new('hi')
    expect(string.anagram_check("bye")).to(eq("These words have no letter matches and are antigrams."))
  end

  it('works with spaces and punctuation') do
    string = Anagram.new('Tom Marvolo Riddle')
    expect(string.anagram_check("I Am Lord Voldemort")).to(eq("These words are anagrams!"))
  end

  it('works with spaces and punctuation, but rejects non-words in a sentence') do
    string = Anagram.new('Tzm Mqrvzlz Rbddle')
    expect(string.anagram_check("B Qm Lzrd Vzldemzrt")).to(eq("Error: You have entered at least one non-word. Try again."))
  end

end