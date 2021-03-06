require ('dictionary_lookup')

def not_word?(string)
  string.split(" ").each do |word|
    word = word.gsub(/[\W]/, "")
    if DictionaryLookup::Base.define(word).count == 0
      return true
    end
  end
  return false
end

def palindrome?(input)
  return input.downcase == input.downcase.reverse
end