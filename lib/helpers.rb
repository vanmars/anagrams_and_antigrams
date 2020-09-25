require ('dictionary_lookup')

def not_word?(string)
  symbols_removed_string = string.gsub(/[\W]/, "")
  return DictionaryLookup::Base.define(symbols_removed_string).count == 0
end

def palindrome?(input)
  return input.downcase == input.downcase.reverse
end