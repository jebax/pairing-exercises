class Scrabble
  SCORES = {
    "a" => 1,
    "e" => 1,
    "f" => 4,
    "i" => 1,
    "k" => 5,
    "q" => 10,
    "r" => 1,
    "s" => 1,
    "t" => 1,
    "u" => 1,
    "y" => 4
  }
  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word == nil
    return 0 unless @word.match(/[A-Za-z]/)
    letters = @word.chars
    letters.map{|letter| SCORES[letter]}.sum
  end
end
