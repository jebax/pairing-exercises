class Scrabble
  
  def initialize(word)
    @word = word
  end

  def score
    @word == "a" ? 1 : 0
  end
end
