class Board
  attr_accessor :board, :turn, :game_over, :columns, :diagonal, :diagonal_rev

  def initialize
    # [[-, -, -],
    #  [-, -, -],
    #  [-, -, -]]
    @board = Array.new(3) { Array.new(3, 0) }
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

  def move(move:, player:)
    @turn += 1
    if %w(X O).include?(@board[move[0]][move[1]]) == false
      @board[move[0]][move[1]] = player
      'Your move was a valid move!'
    else
      'Your move is illegal since that square is already taken.'
    end
  end

  def win?(player:)
    winning = false
    for row in @board
      return true if row.all?(String) && row.all?(player)
    end
    for column in columns
      return true if column.all?(String) && column.all?(player)
    end
    if diagonal.all?(String) && diagonal.all?(player)
      return true
    elsif diagonal.all?(String) && diagonal.all?(player)
      return true
    else
      return false
    end
    winning
  end
end
