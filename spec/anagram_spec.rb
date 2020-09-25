require ('rspec')
require ('anagram')

describe ('Anagram#anagram_check') do
  
  it('Spec 1: Correctly checks whether two words are anagrams') do
    string = Anagram.new('ruby')
    expect(string.anagram_check("bury")).to(eq("These words are anagrams!"))
  end

  it('Spec 2: Accounts for capitalized letters') do
    string = Anagram.new('Tea')
    expect(string.anagram_check("Eat")).to(eq("These words are anagrams!"))
  end

  it('Spec 3: Does not include non-words in anagram test') do
    string = Anagram.new('ctgc')
    expect(string.anagram_check("gcct")).to(eq("Error: You have entered at least one non-word. Try again."))
  end

  it('Spec 4: Checks for antigrams') do
    string = Anagram.new('hi')
    expect(string.anagram_check("bye")).to(eq("These words have no letter matches and are antigrams."))
  end

  it('Spec 5: Works with spaces and punctuation') do
    string = Anagram.new('Tom Marvolo Riddle')
    expect(string.anagram_check("I Am Lord Voldemort")).to(eq("These words are anagrams!"))
  end

  it('Spec 6: Works with spaces and punctuation, but rejects non-words in a sentence') do
    string = Anagram.new('Tzm Mqrvzlz Rbddle')
    expect(string.anagram_check("B Qm Lzrd Vzldemzrt")).to(eq("Error: You have entered at least one non-word. Try again."))
  end

  it('Spec 7: Returns how many letters are actual matches') do
    string = Anagram.new('catt')
    expect(string.anagram_check("batty")).to(eq("These words aren't anagrams, but 3 letters match: a, t, t."))
  end

  it('Spec 8: Checks for palindromes') do
    string = Anagram.new('mom')
    expect(string.anagram_check("mommy")).to(eq("These words aren't anagrams, but 3 letters match: m, o, m. By the way, mom is a palindrome."))
  end

end