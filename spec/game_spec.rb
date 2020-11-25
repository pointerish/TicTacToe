require_relative '../lib/game'
require_relative '../lib/board'

describe Game do
  describe '#move' do
    it 'sets the player\'s move on the 2D Board array' do
      game = Game.new(board: Board.new)
      expect(game.move(move_choice: [0, 0], player: 'X')).to eql(1)
    end
  end

  describe '#win?' do
    it 'returns true when top row is all marked by player X' do
      game = Game.new(board: Board.new)
      game.game_board.board[0] = Array.new(3, 'X')
      expect(game.win?(player: 'X')).to eql(true)
    end
  end

  describe '#win?' do
    it 'returns true when middle row is all marked by player X' do
      game = Game.new(board: Board.new)
      game.game_board.board[1] = Array.new(3, 'X')
      expect(game.win?(player: 'X')).to eql(true)
    end
  end

  describe '#win?' do
    it 'returns true when bottom row is all marked by player X' do
      game = Game.new(board: Board.new)
      game.game_board.board[2] = Array.new(3, 'X')
      expect(game.win?(player: 'X')).to eql(true)
    end
  end

  describe '#win?' do
    it 'returns true when left column is all marked by player X' do
      board = Board.new
      board.board = [['X', '-', '-'], ['X', '-', '-'], ['X', '-', '-']]
      game = Game.new(board: board)
      expect(game.win?(player: 'X')).to eql(true)
    end
  end

  describe '#win?' do
    it 'returns true when middle column is all marked by player X' do
      board = Board.new
      board.board = [['-', 'X', '-'], ['-', 'X', '-'], ['-', 'X', '-']]
      game = Game.new(board: board)
      expect(game.win?(player: 'X')).to eql(true)
    end
  end

  describe '#win?' do
    it 'returns true when right column is all marked by player X' do
      board = Board.new
      board.board = [['-', '-', 'X'], ['-', '-', 'X'], ['-', '-', 'X']]
      game = Game.new(board: board)
      expect(game.win?(player: 'X')).to eql(true)
    end
  end

  describe '#win?' do
    it 'returns true when left-top to right-bottom diagonal is all marked by player X' do
      board = Board.new
      board.board = [['X', '-', '-'], ['-', 'X', '-'], ['-', '-', 'X']]
      game = Game.new(board: board)
      expect(game.win?(player: 'X')).to eql(true)
    end
  end

  describe '#win?' do
    it 'returns true when left-bottom to right-top diagonal is all marked by player X' do
      board = Board.new
      board.board = [['-', '-', 'X'], ['-', 'X', '-'], ['X', '-', '-']]
      game = Game.new(board: board)
      expect(game.win?(player: 'X')).to eql(true)
    end
  end

  describe '#draw?' do
    it 'returns true when players have reached a draw by 9-move exhaustion' do
      board = Board.new
      game = Game.new(board: board)
      expect(game.draw?).to eql(false)
    end
  end
end
