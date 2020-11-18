class Game
  attr_accessor :turn, :game_over, :game_board

  def initialize(board:)
    @game_over = false
    @turn = 0
    @game_board = board
  end

  def move(move_choice:, player:)
    if %w[X O].include?(@game_board.board[move_choice[0]][move_choice[1]]) == false
      @game_board.board[move_choice[0]][move_choice[1]] = player
    else
      raise StandardError.new 'Your move is illegal since that square is already taken.'
    end
    @turn += 1
  end

  def draw?
    return false unless @turn == 9
  end

  def win?(player:)
    # First we check rows for a possible win
    @game_board.board.each { |row| return true if row.all?(player) }
    # Now we will check columns
    @game_board.columns.each { |column| return true if column.all?(player) }
    # The following just checks for diagonal wins
    if @game_board.diagonal.all?(player)
      true
    elsif @game_board.diagonal_rev.all?(player)
      true
    else
      # return false since there's no win just yet
      false
    end
  end
end
