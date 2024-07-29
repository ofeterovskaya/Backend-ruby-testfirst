#write your code here
def translate(sentence)
  sentence.split.map do |word|
    # Handle capitalization
    capitalized = word.capitalize == word
    # Handle punctuation
    punctuation = word.match(/\p{Punct}$/) ? word.slice!(-1, 1) : ''
    
    # Adjusted main translation logic
    if word =~ /\A[aeiou]/i
      pig_latin = word + "ay"
    else
      # Adjusted to handle 'qu' following a consonant
      prefix = word.slice!(/\A([^aeiou]*qu|sch|[^aeiou]+)/i)
      pig_latin = word + prefix + "ay"
    end

    # Reapply capitalization if necessary
    pig_latin.capitalize! if capitalized
    pig_latin + punctuation
  end.join(" ")
end