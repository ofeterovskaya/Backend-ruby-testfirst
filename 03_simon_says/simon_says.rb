#write your code here
# simon_says.rb

def echo(s)
    s
  end
  
  def shout(s)
    s.upcase
  end
  
  def repeat(s, times=2)
    ([s] * times).join(" ")
  end
  
  def start_of_word(s, n)
    s[0...n]
  end
  
  def first_word(s)
    s.split.first
  end
  
  def titleize(s)
    little_words = %w[and over the]
    s.capitalize.split.map { |word| little_words.include?(word) ? word : word.capitalize }.join(" ")
  end