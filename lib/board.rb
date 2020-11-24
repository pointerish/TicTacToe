class Board
  attr_accessor :board, :columns, :diagonal, :diagonal_rev

  def initialize
    @board = Array.new(3) { Array.new(3, '-') }
    @turn = 0
    @game_over = false
  end

  def columns
    @board.transpose
  end

  def diagonal
    (0..2).collect { |i| @board[i][i] }
  end

  def diagonal_rev
    [@board[0][2], @board[1][1], @board[2][0]]
  end
end
