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

  def score(double_word = false, triple_word = false)
    return 0 if @word == nil || @word.strip.empty?
    total = sum(@word.downcase.chars)
    return total * 6 if double_word && triple_word
    return total * 2 if double_word
    return total * 3 if triple_word
    total
  end

  def sum(word)
    SCORES.each do |score, letters|
      word.map! { |char| letters.include?(char) ? score : char }
    end
    word.sum
  end
end
