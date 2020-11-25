require_relative '../lib/board'

describe Board do
  describe '#columns' do
    b = Board.new
    b.board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    it 'returns a 2D array containing the colums of the board' do
      expect(b.columns).to eql([[1, 4, 7], [2, 5, 8], [3, 6, 9]])
    end
  end

  describe '#diagonal' do
    b = Board.new
    b.board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    it 'returns a 2D array containing the colums of the board' do
      expect(b.diagonal).to eql([1, 5, 9])
    end
  end

  describe '#diagonal_rev' do
    b = Board.new
    b.board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    it 'returns a 2D array containing the colums of the board' do
      expect(b.diagonal_rev).to eql([3, 5, 7])
    end
  end
end
