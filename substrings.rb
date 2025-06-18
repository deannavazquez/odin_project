def substrings(word, dictionary)
  result = Hash.new(0)
  cleaned_word = word.downcase.gsub(/[^a-z0-9\s]/i, "") # handle case sensitivity 

  dictionary.each do |dict_word|
     matches = cleaned_word.scan(dict_word) # using scan to find all matches 
      result[dict_word] += matches.length unless matches.empty?
  end

  result
end