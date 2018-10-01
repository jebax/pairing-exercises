class Scrabble
  SCORES = {
    a => 1,
    f => 4
  }
  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word == nil
    return 0 unless @word.match(/[A-Za-z]/)
  end
end
