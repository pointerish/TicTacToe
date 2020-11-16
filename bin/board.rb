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

  def move(move:)
    @turn += 1
    @board[move[0][move[1]] = 'X'
  end

  def win?
    winning = false
    for row in rows
      for inner_row in row
        return inner_row.all?(String)
      end
    end
    for column in columns
      for inner_column in column
        return inner_column.all?(String)
      end
    end
    if @diagonal.all?(String)
      winning = true
      return winning
    else
      winning = @diagonal_rev.all?(String)
      return winning
    end
    winning
  end
end
