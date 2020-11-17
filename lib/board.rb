class Board
  attr_accessor :board

  def initialize
    # [[-, -, -],
    #  [-, -, -],
    #  [-, -, -]]
    @board = Array.new(3) { Array.new(3, '-') }
    @turn = 0
    @game_over = false
  end

  def columns
    [[@board[0][0], @board[1][0], @board[2][0]],
     [@board[0][1], @board[1][1], @board[2][1]],
     [@board[0][2], @board[1][2], @board[2][2]]]
  end

  def diagonal
    [@board[0][2], @board[1][1], @board[2][0]]
  end

  def diagonal_rev
    [@board[0][0], @board[1][1], @board[2][2]]
  end
end
