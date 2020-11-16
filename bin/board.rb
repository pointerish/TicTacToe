class Board
  attr_accessor :board, :turn, :rows, :game_over,
                :columns, :diagonal, :diagonal_rev

  def initialize
    # [[-, -, -],
    #  [-, -, -],
    #  [-, -, -]]
    @board = Array.new(3) { Array.new(3, 0) }
    @turn = 0
    @game_over = false
    @rows = [@board[0, 3], @board[3, 3], @board[6, 3]]
    @columns = [[@board[0, 0], @board[1, 0], @board[2, 0]],
               [@board[0, 1], @board[1, 1], @board[2, 1]],
               [@board[0, 2], @board[1, 2], @board[2, 2]]]
    @diagonal = [@board[0, 2], @board[1, 1], @board[2, 0]]
    @diagonal_rev = [@board[0, 0], @board[1, 1], @board[2, 2]]
  end

  def move(move:, player:)
    @turn += 1
    if %w(X O).include?(@board[move[0]][move[1]])
      @board[move[0]][move[1]] = player
      'Your move was a valid move!'
    else
      'Your move is illegal since that square is already taken.'
  end

  def win?(player:)
    winning = false
    for row in rows
      for inner_row in row
        return true if inner_row.all?(String) && inner_row.all?(player)
      end
    end
    for column in columns
      for inner_column in column
        return true if inner_column.all?(String) && inner_column.all?(player)
      end
    end
    if @diagonal.all?(String) && @diagonal.all?(player)
      return true
    elsif @diagonal.all?(String) && @diagonal.all?(player)
      return true
    else
      return false
    end
    winning
  end
end

