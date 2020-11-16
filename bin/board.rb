# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity

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

  def move(move:, player:)
    @turn += 1
    if %w[X O].include?(@board[move[0]][move[1]]) == false
      @board[move[0]][move[1]] = player
      'Your move was a valid move!'
    else
      'Your move is illegal since that square is already taken.'
    end
  end

  def win?(player:)
    @board.each { |row| return true if row.all?(player) }
    columns.each { |column| return true if column.all?(player) }
    if diagonal.all?(player)
      true
      elsif diagonal_rev.all?(player)
      true
    else
      false
    end
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
