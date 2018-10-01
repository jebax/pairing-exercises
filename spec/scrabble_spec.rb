require 'scrabble'

RSpec.describe Scrabble do
  context 'standard specs' do
    it 'returns 0 for empty words' do
      scrabble = Scrabble.new('')

      expect(scrabble.score).to eq 0
    end

    it 'returns 0 for whitespace' do
      scrabble = Scrabble.new(" \t\n")

      expect(scrabble.score).to eq 0
    end

    it 'returns 0 for nil' do
      scrabble = Scrabble.new(nil)

      expect(scrabble.score).to eq 0
    end

    it 'scores short word' do
      scrabble = Scrabble.new('a')

      expect(scrabble.score).to eq 1
    end

    it 'scores short word' do
      scrabble = Scrabble.new('f')

      expect(scrabble.score).to eq 4
    end
  end

  context 'further specs' do
    it 'scores a simple word' do
      scrabble = Scrabble.new('street')

      expect(scrabble.score).to eq 6
    end

    it 'scores a more complicated word' do
      scrabble = Scrabble.new('quirky')

      expect(scrabble.score).to eq 22
    end

    it 'scores a case-insensitive word' do
      scrabble = Scrabble.new('OXYPHENBUTAZONE')

      expect(scrabble.score).to eq 41
    end

    it 'returns a double value for a double scoring word' do
      scrabble = Scrabble.new("hello")

      expect(scrabble.score(true, false)).to eq 16
    end

    it 'returns a triple value for a triple scoring word' do
      scrabble = Scrabble.new("hello")

      expect(scrabble.score(false, true)).to eq 24
    end
  end
end
