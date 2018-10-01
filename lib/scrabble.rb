class Scrabble
  SCORES = {
    1 => ["a", "e", "i", "l", "n", "o", "r", "s", "t", "u"],
    2 => ["d", "g"],
    3 => ["b", "c", "m", "p"],
    4 => ["f", "h", "v", "w", "y"],
    5 => ["k"],
    8 => ["j", "x"],
    10 => ["q", "z"]
  }
  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word == nil
    return 0 unless @word.match(/[A-Za-z]/)
    total = 0
    chars = @word.downcase.chars
    SCORES.each do |score, letters|
      chars.each do |char|
        total += score if letters.include? char
      end
    end
    total
  end
end
