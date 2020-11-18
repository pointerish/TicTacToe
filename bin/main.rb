#!/usr/bin/env ruby

# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Style/GuardClause

require_relative '../lib/board'
require_relative '../lib/game'

def show_board(board:)
  p board.board[0]
  p board.board[1]
  p board.board[2]
end

def main_loop(game:, players:)
  user_keys = { '1' => [0, 0], '2' => [0, 1], '3' => [0, 2],
                '4' => [1, 0], '5' => [1, 1], '6' => [1, 2],
                '7' => [2, 0], '8' => [2, 1], '9' => [2, 2] }
  while game.game_over == false && game.turn < 9
    player_turn = game.turn.even? ? 'X' : 'O'
    player_turn_name = player_turn == 'X' ? players[0] : players[1]
    puts "=================================\n\n"
    show_board(board: game.game_board)
    print "\n\nTurn for #{player_turn_name}! Enter your move: "
    while (move_selection = gets.chomp)
      if [1, 2, 3, 4, 5, 6, 7, 8, 9].any? { |j| j.to_s == move_selection }
        break
      else
        puts "\n*****Please enter a number from 1 to 9 in order to play!******"
        print "Turn for #{player_turn_name}! Enter your move again: "
      end
    end
    begin
      # Attempt move
      game.move(move_choice: user_keys[move_selection], player: player_turn)
      puts "\n\nYour move selection was #{move_selection}"
    rescue StandardError => e # This rescues the exception raised by Game.win? If the move is illegal
      puts e
    end
    # Now follows a small optimization:
    if (game.turn >= 5 && game.win?(player: player_turn)) && game.draw == false 
      # The Game.win? method is not needed If the turn is less than 5
      # since at that point no win is possible.
      puts "\n\n#{player_turn_name} won! Game over!\n\n"
      show_board(board: game.game_board)
      game.game_over = true
    else
      puts "\n\n*****A draw has been reached! Run the game again for the rematch.******"
    end
  end
end

def game_flow
  board = Board.new
  game = Game.new(board: board)
  players = []
  puts "\n\nTic Tac Toe Game Started!\n\n"
  print 'Enter name for player X: '
  player_x = gets.chomp
  players << player_x
  print 'Enter name for player O: '
  player_o = gets.chomp
  players << player_o
  puts "\n\nWelcome to TicTacToe, #{player_x} and #{player_o}!\n\n"

  puts "Choose your move by entering numbers from 1 to 9\nmeaning left to right in descending order.\n\n"

  main_loop(game: game, players: players)
end

game_flow

# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Style/GuardClause
