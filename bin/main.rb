#!/usr/bin/env ruby

require './board.rb'

game_board = Board.new

def game_flow(game:)
  user_keys = {"1"=>[0,0], "2"=>[0,1], "3"=>[0,2],
               "4"=>[1,0], "5"=>[1,1], "6"=>[1,2],
               "7"=>[2,0], "8"=>[2,1], "9"=>[2,2]}

  puts "\n\nTic Tac Toe Game Started!\n\n"
  print 'Enter name for player X: '
  player_x = gets.chomp
  print 'Enter name for player O: '
  player_o = gets.chomp
  puts "\n\nWelcome to TicTacToe, #{player_x} and #{player_o}!\n\n"
  9.times do |turn| # There are only 9 possible moves until draw
    player_turn = turn.even? ? 'X' : 'O'
    player_turn_name = player_turn == 'X' ? player_x : player_o
    puts '================================='
    p game.board[0]
    p game.board[1]
    p game.board[2]
    print "\n\nTurn for #{player_turn_name}!\n"
    print 'Choose your move by using the numbers from 1 to 9 meaning left to right cells in descending order: '
    move_selection = gets.chomp
    game.move(move:user_keys[move_selection], player: player_turn)

    puts "\n\nYour move selection was #{move_selection}."
    if game.win?(player: player_turn)
      puts "\n\n#{player_turn_name} won! Game over!\n\n"
      break
    else
      puts "\n\nYour move is not winning... yet! But it\'s also not a draw."
    end
  end
end

game_flow(game: game_board)
