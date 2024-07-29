class Book
# write your code here
attr_reader :title

def title=(new_title)
  lowercase_words = %w[the a an and in the of]
  @title = new_title.split.each_with_index.map do |word, index|
    if lowercase_words.include?(word) && index > 0
      word
    else
      word.capitalize
    end
  end.join(" ")
end
end
